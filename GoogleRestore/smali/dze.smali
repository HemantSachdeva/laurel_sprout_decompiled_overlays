.class final Ldze;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/lang/Class;

.field public final b:Ljava/lang/reflect/Method;

.field public final c:Ljava/lang/reflect/Method;

.field public final d:Ljava/lang/reflect/Method;

.field public final e:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/ClassLoader;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcpv;

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Ldze;->a:Ljava/lang/Class;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    .line 2
    const-string v2, "getScopes"

    invoke-virtual {p1, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Ldze;->d:Ljava/lang/reflect/Method;

    .line 3
    const-string v1, "com.google.auth.oauth2.ServiceAccountJwtAccessCredentials"

    invoke-static {v1, v0, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p2

    const-class v1, Lcpv;

    .line 4
    invoke-virtual {p2, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    new-array v1, v0, [Ljava/lang/Class;

    .line 5
    const-string v2, "newBuilder"

    invoke-virtual {p2, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    iput-object p2, p0, Ldze;->b:Ljava/lang/reflect/Method;

    .line 6
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p2

    new-array v1, v0, [Ljava/lang/Class;

    .line 7
    const-string v2, "build"

    invoke-virtual {p2, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Ldze;->c:Ljava/lang/reflect/Method;

    new-instance v1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ldze;->e:Ljava/util/List;

    new-array v2, v0, [Ljava/lang/Class;

    .line 9
    const-string v3, "getClientId"

    invoke-virtual {p1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 10
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v5, "setClientId"

    invoke-virtual {p2, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-instance v5, Ldzf;

    .line 11
    invoke-direct {v5, v2, v4}, Ldzf;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 12
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v2, v0, [Ljava/lang/Class;

    .line 13
    const-string v4, "getClientEmail"

    invoke-virtual {p1, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Class;

    .line 14
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v5, "setClientEmail"

    invoke-virtual {p2, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-instance v5, Ldzf;

    .line 15
    invoke-direct {v5, v2, v4}, Ldzf;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 16
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v2, v0, [Ljava/lang/Class;

    .line 17
    const-string v4, "getPrivateKey"

    invoke-virtual {p1, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Class;

    .line 18
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v5, "setPrivateKey"

    invoke-virtual {p2, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-instance v5, Ldzf;

    .line 19
    invoke-direct {v5, v2, v4}, Ldzf;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 20
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v2, v0, [Ljava/lang/Class;

    .line 21
    const-string v4, "getPrivateKeyId"

    invoke-virtual {p1, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/Class;

    .line 22
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "setPrivateKeyId"

    invoke-virtual {p2, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    new-instance v0, Ldzf;

    .line 23
    invoke-direct {v0, p1, p2}, Ldzf;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 24
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
