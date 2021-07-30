.class public final Lai;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:Lae;

.field private final b:Laj;


# direct methods
.method public constructor <init>(Laj;Lae;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lai;->a:Lae;

    iput-object p1, p0, Lai;->b:Laj;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lac;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.arch.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lai;->b:Laj;

    .line 4
    invoke-virtual {v1, v0}, Laj;->a(Ljava/lang/String;)Lac;

    move-result-object v1

    .line 5
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p1, p0, Lai;->a:Lae;

    .line 11
    instance-of v0, p1, Lah;

    if-nez v0, :cond_0

    goto :goto_1

    .line 12
    :cond_0
    check-cast p1, Lah;

    invoke-virtual {p1, v1}, Lah;->a(Lac;)V

    return-object v1

    :cond_1
    iget-object v1, p0, Lai;->a:Lae;

    .line 6
    instance-of v2, v1, Laf;

    if-eqz v2, :cond_2

    .line 7
    check-cast v1, Laf;

    invoke-virtual {v1, v0, p1}, Laf;->a(Ljava/lang/String;Ljava/lang/Class;)Lac;

    move-result-object p1

    move-object v1, p1

    goto :goto_0

    .line 8
    :cond_2
    invoke-interface {v1, p1}, Lae;->a(Ljava/lang/Class;)Lac;

    move-result-object p1

    move-object v1, p1

    .line 7
    :goto_0
    iget-object p1, p0, Lai;->b:Laj;

    iget-object p1, p1, Laj;->a:Ljava/util/HashMap;

    .line 9
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lac;

    if-nez p1, :cond_3

    .line 11
    :goto_1
    return-object v1

    .line 10
    :cond_3
    invoke-virtual {p1}, Lac;->a()V

    return-object v1

    .line 1
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 2
    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
