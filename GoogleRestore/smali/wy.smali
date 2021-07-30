.class public final Lwy;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lta;

.field public b:Landroid/os/Bundle;

.field public c:Z

.field public d:Z

.field private e:Lwv;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lta;

    .line 1
    invoke-direct {v0}, Lta;-><init>()V

    iput-object v0, p0, Lwy;->a:Lta;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lwy;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    iget-boolean v0, p0, Lwy;->c:Z

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lwy;->b:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v2, p0, Lwy;->b:Landroid/os/Bundle;

    .line 4
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget-object p1, p0, Lwy;->b:Landroid/os/Bundle;

    .line 5
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iput-object v1, p0, Lwy;->b:Landroid/os/Bundle;

    :cond_0
    return-object v0

    :cond_1
    return-object v1

    .line 0
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 2
    const-string v0, "You can consumeRestoredStateForKey only after super.onCreate of corresponding component"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/lang/Class;)V
    .locals 4

    iget-boolean v0, p0, Lwy;->d:Z

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lwy;->e:Lwv;

    if-nez v0, :cond_0

    new-instance v0, Lwv;

    .line 9
    invoke-direct {v0, p0}, Lwv;-><init>(Lwy;)V

    iput-object v0, p0, Lwy;->e:Lwv;

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    iget-object v0, p0, Lwy;->e:Lwv;

    .line 12
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, v0, Lwv;->a:Ljava/util/Set;

    .line 13
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 10
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must have default constructor in order to be automatically recreated"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 0
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 8
    const-string v0, "Can not perform this action after onSaveInstanceState"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/lang/String;Lwx;)V
    .locals 1

    iget-object v0, p0, Lwy;->a:Lta;

    .line 6
    invoke-virtual {v0, p1, p2}, Lta;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwx;

    if-nez p1, :cond_0

    .line 7
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 7
    const-string p2, "SavedStateProvider with the given key is already registered"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
