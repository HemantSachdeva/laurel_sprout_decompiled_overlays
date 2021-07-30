.class public final Lbuk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcrm;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lbuh;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbuh;

    invoke-direct {v0}, Lbuh;-><init>()V

    iput-object v0, p0, Lbuk;->b:Lbuh;

    iput-object p1, p0, Lbuk;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lbuk;->b()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/Boolean;
    .locals 9

    iget-object v0, p0, Lbuk;->b:Lbuh;

    iget-object v1, p0, Lbuk;->a:Landroid/content/Context;

    iget-boolean v2, v0, Lbuh;->b:Z

    const/4 v3, 0x0

    if-nez v2, :cond_5

    .line 1
    invoke-static {v1}, Lbqg;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "primes:shutdown_primes"

    .line 3
    invoke-static {v1}, Lbqa;->a(Landroid/content/ContentResolver;)Ljava/lang/Object;

    move-result-object v5

    .line 2
    sget-object v6, Lbqa;->g:Ljava/util/HashMap;

    .line 4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v6, v4, v7}, Lbqa;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    if-eqz v6, :cond_0

    .line 12
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto/16 :goto_1

    .line 5
    :cond_0
    invoke-static {v1, v4}, Lbqa;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v8, ""

    .line 6
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v7, v6

    const/4 v1, 0x0

    goto :goto_0

    .line 2
    :cond_1
    sget-object v8, Lbqa;->c:Ljava/util/regex/Pattern;

    .line 7
    invoke-virtual {v8, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 8
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v1, 0x1

    goto :goto_0

    .line 2
    :cond_2
    sget-object v8, Lbqa;->d:Ljava/util/regex/Pattern;

    .line 9
    invoke-virtual {v8, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    .line 2
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "attempt to read gservices key "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " (value \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\") as boolean"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Gservices"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v7, v6

    const/4 v1, 0x0

    .line 2
    :goto_0
    sget-object v6, Lbqa;->g:Ljava/util/HashMap;

    .line 11
    invoke-static {v5, v6, v4, v7}, Lbqa;->a(Ljava/lang/Object;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v1

    goto :goto_1

    .line 10
    :catch_0
    move-exception v1

    iput-boolean v2, v0, Lbuh;->b:Z

    sget-object v0, Lbuh;->a:Lcua;

    invoke-virtual {v0}, Lctx;->b()Lcup;

    move-result-object v0

    .line 13
    check-cast v0, Lctz;

    invoke-interface {v0, v1}, Lctz;->a(Ljava/lang/Throwable;)V

    const/16 v1, 0x1b

    const-string v2, "com/google/android/libraries/performance/primes/flags/GservicesWrapper"

    const-string v4, "readBoolean"

    const-string v5, "GservicesWrapper.java"

    invoke-interface {v0, v2, v4, v1, v5}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "Failed to read GServices."

    invoke-interface {v0, v1}, Lctz;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_5
    nop

    .line 14
    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
