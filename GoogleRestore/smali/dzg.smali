.class public final Ldzg;
.super Ldvf;
.source "PG"


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field private static final f:Ldze;

.field private static final g:Ljava/lang/Class;


# instance fields
.field public final b:Z

.field public final c:Lcpv;

.field public d:Ldxt;

.field public e:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-class v0, Ldzg;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Ldzg;->a:Ljava/util/logging/Logger;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.google.auth.oauth2.ServiceAccountCredentials"

    const/4 v3, 0x0

    .line 3
    invoke-static {v2, v3, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v3, Ldze;

    .line 4
    invoke-direct {v3, v2, v0}, Ldze;-><init>(Ljava/lang/Class;Ljava/lang/ClassLoader;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 5
    :catch_0
    move-exception v0

    move-object v7, v0

    goto :goto_0

    .line 8
    :catch_1
    move-exception v0

    move-object v7, v0

    :goto_0
    sget-object v2, Ldzg;->a:Ljava/util/logging/Logger;

    .line 5
    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "io.grpc.auth.GoogleAuthLibraryCallCredentials"

    const-string v5, "createJwtHelperOrNull"

    const-string v6, "Failed to create JWT helper. This is unexpected"

    invoke-virtual/range {v2 .. v7}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v1

    goto :goto_1

    .line 8
    :catch_2
    move-exception v0

    move-object v3, v1

    .line 4
    :goto_1
    sput-object v3, Ldzg;->f:Ldze;

    :try_start_2
    const-string v0, "cpy"

    .line 6
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    const-class v1, Lcpv;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_2

    .line 5
    :catch_3
    move-exception v0

    move-object v7, v0

    sget-object v2, Ldzg;->a:Ljava/util/logging/Logger;

    .line 7
    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "io.grpc.auth.GoogleAuthLibraryCallCredentials"

    const-string v5, "loadGoogleCredentialsClass"

    const-string v6, "Failed to load GoogleCredentials"

    invoke-virtual/range {v2 .. v7}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    :goto_2
    sput-object v1, Ldzg;->g:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcpv;)V
    .locals 9

    sget-object v0, Ldzg;->f:Ldze;

    invoke-direct {p0}, Ldvf;-><init>()V

    sget-object v1, Ldzg;->g:Ljava/lang/Class;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-eqz v0, :cond_3

    iget-object v3, v0, Ldze;->a:Ljava/lang/Class;

    .line 10
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :try_start_0
    iget-object v3, v0, Ldze;->a:Ljava/lang/Class;

    .line 11
    invoke-virtual {v3, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcpv;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object p1, v0, Ldze;->d:Ljava/lang/reflect/Method;

    new-array v4, v2, [Ljava/lang/Object;

    .line 12
    invoke-virtual {p1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    .line 13
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    if-eqz p1, :cond_1

    move-object p1, v3

    goto :goto_5

    :cond_1
    iget-object p1, v0, Ldze;->b:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v5, v2, [Ljava/lang/Object;

    .line 14
    invoke-virtual {p1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v4, v0, Ldze;->e:Ljava/util/List;

    .line 15
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldzf;

    iget-object v6, v5, Ldzf;->b:Ljava/lang/reflect/Method;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v5, v5, Ldzf;->a:Ljava/lang/reflect/Method;

    new-array v8, v2, [Ljava/lang/Object;

    .line 16
    invoke-virtual {v5, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v7, v2

    invoke-virtual {v6, p1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v0, v0, Ldze;->c:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    .line 17
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcpv;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 18
    :catch_0
    move-exception p1

    move-object v0, p1

    move-object p1, v3

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v0, p1

    move-object p1, v3

    goto :goto_3

    :catch_2
    move-exception v0

    :goto_2
    move-object v7, v0

    goto :goto_4

    .line 17
    :catch_3
    move-exception v0

    :goto_3
    move-object v7, v0

    :goto_4
    sget-object v2, Ldzg;->a:Ljava/util/logging/Logger;

    .line 18
    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "io.grpc.auth.GoogleAuthLibraryCallCredentials$JwtHelper"

    const-string v5, "tryServiceAccountToJwt"

    const-string v6, "Failed converting service account credential to JWT. This is unexpected"

    invoke-virtual/range {v2 .. v7}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    :cond_3
    :goto_5
    iput-boolean v1, p0, Ldzg;->b:Z

    iput-object p1, p0, Ldzg;->c:Lcpv;

    return-void
.end method

.method public static a(Ljava/lang/String;Ldxx;)Ljava/net/URI;
    .locals 8

    iget-object p1, p1, Ldxx;->c:Ljava/lang/String;

    .line 23
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "/"

    if-eqz v0, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/String;

    .line 23
    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object v5, p1

    .line 24
    :try_start_0
    new-instance p1, Ljava/net/URI;

    const-string v3, "https"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    invoke-virtual {p1}, Ljava/net/URI;->getPort()I

    move-result p0

    const/16 v0, 0x1bb

    if-ne p0, v0, :cond_1

    .line 28
    invoke-static {p1}, Ldzg;->a(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1

    :catch_0
    move-exception p0

    .line 25
    sget-object p1, Ldyv;->f:Ldyv;

    const-string v0, "Unable to construct service URI for auth"

    invoke-virtual {p1, v0}, Ldyv;->a(Ljava/lang/String;)Ldyv;

    move-result-object p1

    .line 26
    invoke-virtual {p1, p0}, Ldyv;->b(Ljava/lang/Throwable;)Ldyv;

    move-result-object p0

    invoke-virtual {p0}, Ldyv;->c()Ldyw;

    move-result-object p0

    throw p0
.end method

.method private static a(Ljava/net/URI;)Ljava/net/URI;
    .locals 9

    :try_start_0
    new-instance v8, Ljava/net/URI;

    .line 19
    invoke-virtual {p0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    .line 20
    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return-object v8

    .line 20
    :catch_0
    move-exception p0

    .line 21
    sget-object v0, Ldyv;->f:Ldyv;

    const-string v1, "Unable to construct service URI after removing port"

    invoke-virtual {v0, v1}, Ldyv;->a(Ljava/lang/String;)Ldyv;

    move-result-object v0

    .line 22
    invoke-virtual {v0, p0}, Ldyv;->b(Ljava/lang/Throwable;)Ldyv;

    move-result-object p0

    invoke-virtual {p0}, Ldyv;->c()Ldyw;

    move-result-object p0

    throw p0
.end method
