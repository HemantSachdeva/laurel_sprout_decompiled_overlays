.class final Ldma;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/util/Iterator;

.field public static final b:Ljava/lang/Iterable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ldly;

    invoke-direct {v0}, Ldly;-><init>()V

    sput-object v0, Ldma;->a:Ljava/util/Iterator;

    new-instance v0, Ldlz;

    invoke-direct {v0}, Ldlz;-><init>()V

    sput-object v0, Ldma;->b:Ljava/lang/Iterable;

    return-void
.end method
