.class abstract Ldkx;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ldkx;

.field public static final b:Ldkx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ldkv;

    invoke-direct {v0}, Ldkv;-><init>()V

    sput-object v0, Ldkx;->a:Ldkx;

    new-instance v0, Ldkw;

    invoke-direct {v0}, Ldkw;-><init>()V

    sput-object v0, Ldkx;->b:Ldkx;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;J)Ljava/util/List;
.end method

.method public abstract a(Ljava/lang/Object;Ljava/lang/Object;J)V
.end method

.method public abstract b(Ljava/lang/Object;J)V
.end method
