.class public final Lo;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Ljava/util/Map;

.field private static final b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    .line 1
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lo;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lo;->b:Ljava/util/Map;

    return-void
.end method

.method private static a(Ljava/lang/Class;)I
    .locals 10

    const-string v0, "."

    sget-object v1, Lo;->a:Ljava/util/Map;

    .line 7
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_11

    .line 8
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const/4 v2, 0x1

    goto/16 :goto_8

    .line 9
    :cond_0
    const/4 v1, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v5

    .line 10
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_1

    .line 11
    invoke-virtual {v5}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 15
    :cond_1
    const-string v5, ""

    .line 12
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 13
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_"

    invoke-virtual {v6, v0, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_LifecycleAdapter"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 15
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    :goto_1
    goto :goto_2

    .line 30
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 16
    :goto_2
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v5, v3, [Ljava/lang/Class;

    aput-object p0, v5, v4

    .line 17
    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v5

    if-nez v5, :cond_4

    .line 19
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 42
    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    .line 20
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception v0

    move-object v0, v1

    .line 19
    :cond_4
    :goto_3
    if-eqz v0, :cond_5

    sget-object v1, Lo;->b:Ljava/util/Map;

    .line 21
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 22
    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 23
    :cond_5
    sget-object v0, Ld;->a:Ld;

    iget-object v5, v0, Ld;->b:Ljava/util/Map;

    .line 24
    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    if-eqz v5, :cond_6

    .line 25
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v2, 0x1

    goto/16 :goto_8

    .line 26
    :cond_6
    invoke-virtual {v0, p0}, Ld;->a(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v5

    .line 27
    array-length v6, v5

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v6, :cond_8

    aget-object v8, v5, v7

    const-class v9, Lx;

    .line 28
    invoke-virtual {v8, v9}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Lx;

    if-eqz v8, :cond_7

    .line 29
    invoke-virtual {v0, p0, v5}, Ld;->a(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Lb;

    const/4 v2, 0x1

    goto :goto_8

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_8
    iget-object v0, v0, Ld;->b:Ljava/util/Map;

    .line 30
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v0, p0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 32
    invoke-static {v0}, Lo;->b(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 33
    invoke-static {v0}, Lo;->a(Ljava/lang/Class;)I

    move-result v1

    if-ne v1, v3, :cond_a

    const/4 v2, 0x1

    goto :goto_8

    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    sget-object v5, Lo;->b:Ljava/util/Map;

    .line 34
    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_5

    .line 40
    :cond_b
    nop

    .line 35
    :goto_5
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    array-length v5, v0

    :goto_6
    if-ge v4, v5, :cond_f

    aget-object v6, v0, v4

    .line 36
    invoke-static {v6}, Lo;->b(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_c

    goto :goto_7

    .line 37
    :cond_c
    invoke-static {v6}, Lo;->a(Ljava/lang/Class;)I

    move-result v7

    if-ne v7, v3, :cond_d

    const/4 v2, 0x1

    goto :goto_8

    :cond_d
    if-nez v1, :cond_e

    new-instance v1, Ljava/util/ArrayList;

    .line 38
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_e
    sget-object v7, Lo;->b:Ljava/util/Map;

    .line 39
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 36
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 39
    :cond_f
    if-eqz v1, :cond_10

    sget-object v0, Lo;->b:Ljava/util/Map;

    .line 40
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_10
    const/4 v2, 0x1

    .line 8
    :goto_8
    sget-object v0, Lo;->a:Ljava/util/Map;

    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    .line 42
    :cond_11
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static a(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)Lf;
    .locals 2

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 3
    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    .line 4
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 6
    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    .line 5
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 4
    :catch_2
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    .line 6
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method static a(Ljava/lang/Object;)Lk;
    .locals 4

    .line 44
    instance-of v0, p0, Lk;

    .line 45
    instance-of v1, p0, Le;

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    new-instance v0, Landroid/arch/lifecycle/FullLifecycleObserverAdapter;

    .line 60
    move-object v1, p0

    check-cast v1, Le;

    check-cast p0, Lk;

    invoke-direct {v0, v1, p0}, Landroid/arch/lifecycle/FullLifecycleObserverAdapter;-><init>(Le;Lk;)V

    return-object v0

    .line 45
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    new-instance v0, Landroid/arch/lifecycle/FullLifecycleObserverAdapter;

    .line 46
    check-cast p0, Le;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/arch/lifecycle/FullLifecycleObserverAdapter;-><init>(Le;Lk;)V

    return-object v0

    :cond_2
    if-eqz v0, :cond_3

    .line 47
    check-cast p0, Lk;

    return-object p0

    .line 48
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 49
    invoke-static {v0}, Lo;->a(Ljava/lang/Class;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    sget-object v1, Lo;->b:Ljava/util/Map;

    .line 50
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 51
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    .line 52
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 53
    invoke-static {v0, p0}, Lo;->a(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)Lf;

    move-result-object p0

    new-instance v0, Landroid/arch/lifecycle/SingleGeneratedAdapterObserver;

    .line 54
    invoke-direct {v0, p0}, Landroid/arch/lifecycle/SingleGeneratedAdapterObserver;-><init>(Lf;)V

    return-object v0

    .line 55
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lf;

    .line 56
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 57
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Constructor;

    invoke-static {v3, p0}, Lo;->a(Ljava/lang/reflect/Constructor;Ljava/lang/Object;)Lf;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    new-instance p0, Landroid/arch/lifecycle/CompositeGeneratedAdaptersObserver;

    .line 58
    invoke-direct {p0, v1}, Landroid/arch/lifecycle/CompositeGeneratedAdaptersObserver;-><init>([Lf;)V

    return-object p0

    :cond_6
    new-instance v0, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;

    .line 59
    invoke-direct {v0, p0}, Landroid/arch/lifecycle/ReflectiveGenericLifecycleObserver;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static b(Ljava/lang/Class;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-class v0, Lvx;

    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
