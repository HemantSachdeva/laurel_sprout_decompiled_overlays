.class public final enum Lczj;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final enum a:Lczj;

.field private static final synthetic b:[Lczj;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lczj;

    .line 1
    invoke-direct {v0}, Lczj;-><init>()V

    sput-object v0, Lczj;->a:Lczj;

    const/4 v1, 0x1

    new-array v1, v1, [Lczj;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lczj;->b:[Lczj;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 2
    const-string v0, "INSTANCE"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lczj;
    .locals 1

    sget-object v0, Lczj;->b:[Lczj;

    .line 4
    invoke-virtual {v0}, [Lczj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lczj;

    return-object v0
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    .line 3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "MoreExecutors.directExecutor()"

    return-object v0
.end method
