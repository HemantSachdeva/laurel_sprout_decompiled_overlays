.class final synthetic Lbqi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private final a:Lbqj;

.field private final b:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final c:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>(Lbqj;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbqi;->a:Lbqj;

    iput-object p2, p0, Lbqi;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-object p3, p0, Lbqi;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 5

    iget-object v0, p0, Lbqi;->a:Lbqj;

    iget-object v1, p0, Lbqi;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    iget-object v2, p0, Lbqi;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v0}, Lbqj;->a()Lbqh;

    move-result-object v0

    iget-object v0, v0, Lbqh;->a:Landroid/content/SharedPreferences;

    const-string v3, "firebase_crash_collection_enabled"

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {}, Lbqm;->a()Z

    move-result v3

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    invoke-interface {v2, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method
