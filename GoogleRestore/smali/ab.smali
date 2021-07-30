.class public final Lab;
.super Laf;
.source "PG"


# static fields
.field private static final f:[Ljava/lang/Class;

.field private static final g:[Ljava/lang/Class;


# instance fields
.field private final a:Landroid/app/Application;

.field private final b:Lae;

.field private final c:Landroid/os/Bundle;

.field private final d:Lj;

.field private final e:Lwy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Landroid/app/Application;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lz;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sput-object v0, Lab;->f:[Ljava/lang/Class;

    new-array v0, v3, [Ljava/lang/Class;

    const-class v1, Lz;

    aput-object v1, v0, v2

    sput-object v0, Lab;->g:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lxa;Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Laf;-><init>()V

    invoke-interface {p2}, Lxa;->m()Lwy;

    move-result-object v0

    iput-object v0, p0, Lab;->e:Lwy;

    invoke-interface {p2}, Lxa;->ab()Lj;

    move-result-object p2

    iput-object p2, p0, Lab;->d:Lj;

    iput-object p3, p0, Lab;->c:Landroid/os/Bundle;

    iput-object p1, p0, Lab;->a:Landroid/app/Application;

    if-eqz p1, :cond_1

    sget-object p2, Lad;->a:Lad;

    if-nez p2, :cond_0

    new-instance p2, Lad;

    .line 1
    invoke-direct {p2, p1}, Lad;-><init>(Landroid/app/Application;)V

    sput-object p2, Lad;->a:Lad;

    :cond_0
    sget-object p1, Lad;->a:Lad;

    goto :goto_0

    .line 2
    :cond_1
    invoke-static {}, Lag;->a()Lag;

    move-result-object p1

    .line 1
    :goto_0
    iput-object p1, p0, Lab;->b:Lae;

    return-void
.end method

.method private static a(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 4

    .line 25
    invoke-virtual {p0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 26
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 27
    invoke-static {p1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lac;
    .locals 1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0, v0, p1}, Lab;->a(Ljava/lang/String;Ljava/lang/Class;)Lac;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 4
    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Class;)Lac;
    .locals 6

    const-class v0, La;

    .line 6
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lab;->a:Landroid/app/Application;

    if-eqz v1, :cond_0

    sget-object v1, Lab;->f:[Ljava/lang/Class;

    .line 8
    invoke-static {p2, v1}, Lab;->a(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    goto :goto_0

    .line 15
    :cond_0
    sget-object v1, Lab;->g:[Ljava/lang/Class;

    .line 7
    invoke-static {p2, v1}, Lab;->a(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 8
    :goto_0
    if-nez v1, :cond_1

    iget-object p1, p0, Lab;->b:Lae;

    .line 9
    invoke-interface {p1, p2}, Lae;->a(Ljava/lang/Class;)Lac;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v2, p0, Lab;->e:Lwy;

    iget-object v3, p0, Lab;->d:Lj;

    iget-object v4, p0, Lab;->c:Landroid/os/Bundle;

    .line 10
    invoke-virtual {v2, p1}, Lwy;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 11
    invoke-static {v5, v4}, Lz;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Lz;

    move-result-object v4

    new-instance v5, Landroid/arch/lifecycle/SavedStateHandleController;

    .line 12
    invoke-direct {v5, p1, v4}, Landroid/arch/lifecycle/SavedStateHandleController;-><init>(Ljava/lang/String;Lz;)V

    .line 13
    invoke-virtual {v5, v2, v3}, Landroid/arch/lifecycle/SavedStateHandleController;->a(Lwy;Lj;)V

    .line 14
    invoke-static {v2, v3}, Landroid/arch/lifecycle/SavedStateHandleController;->b(Lwy;Lj;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lab;->a:Landroid/app/Application;

    if-eqz v0, :cond_2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, p1

    iget-object p1, v5, Landroid/arch/lifecycle/SavedStateHandleController;->a:Lz;

    aput-object p1, v3, v2

    .line 16
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lac;

    goto :goto_1

    .line 20
    :cond_2
    new-array v0, v2, [Ljava/lang/Object;

    iget-object v2, v5, Landroid/arch/lifecycle/SavedStateHandleController;->a:Lz;

    aput-object v2, v0, p1

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lac;

    .line 16
    :goto_1
    const-string v0, "android.arch.lifecycle.savedstate.vm.tag"

    iget-object v1, p1, Lac;->b:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p1, Lac;->b:Ljava/util/Map;

    .line 17
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v3, p1, Lac;->b:Ljava/util/Map;

    .line 18
    invoke-interface {v3, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_4

    goto :goto_2

    .line 20
    :cond_4
    move-object v5, v2

    .line 19
    :goto_2
    :try_start_2
    iget-boolean v0, p1, Lac;->c:Z

    if-eqz v0, :cond_5

    .line 20
    invoke-static {v5}, Lac;->a(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    return-object p1

    .line 22
    :catchall_0
    move-exception p1

    .line 19
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_0

    .line 23
    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An exception happened in constructor of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 22
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 24
    :catch_1
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " cannot be instantiated."

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 7
    :catch_2
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to access "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final a(Lac;)V
    .locals 2

    iget-object v0, p0, Lab;->e:Lwy;

    iget-object v1, p0, Lab;->d:Lj;

    .line 28
    invoke-static {p1, v0, v1}, Landroid/arch/lifecycle/SavedStateHandleController;->a(Lac;Lwy;Lj;)V

    return-void
.end method
