.class final synthetic Ldfe;
.super Ljava/lang/Object;

# interfaces
.implements Lbph;


# static fields
.field static final a:Lbph;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldfe;

    invoke-direct {v0}, Ldfe;-><init>()V

    sput-object v0, Ldfe;->a:Lbph;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lbpi;
    .locals 1

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p1}, Ldfg;->a(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p1}, Lbqb;->a(Ljava/lang/Object;)Lbpi;

    move-result-object p1

    return-object p1
.end method
