.class final synthetic Lddn;
.super Ljava/lang/Object;

# interfaces
.implements Lbom;


# static fields
.field static final a:Lbom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lddn;

    invoke-direct {v0}, Lddn;-><init>()V

    sput-object v0, Lddn;->a:Lbom;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lbpi;)Ljava/lang/Object;
    .locals 0

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
