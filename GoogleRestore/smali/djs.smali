.class final Ldjs;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ldll;

.field private static final b:Ldll;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ldll;

    invoke-direct {v0}, Ldll;-><init>()V

    sput-object v0, Ldjs;->a:Ldll;

    :try_start_0
    const-string v0, "com.google.protobuf.ExtensionSchemaFull"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldll;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :goto_0
    sput-object v0, Ldjs;->b:Ldll;

    return-void
.end method

.method static a()Ldll;
    .locals 2

    sget-object v0, Ldjs;->b:Ldll;

    if-eqz v0, :cond_0

    .line 3
    return-object v0

    .line 0
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 3
    const-string v1, "Protobuf runtime is not correctly loaded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
