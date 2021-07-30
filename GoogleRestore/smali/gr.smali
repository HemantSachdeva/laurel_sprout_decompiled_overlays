.class Lgr;
.super Lgq;
.source "PG"


# instance fields
.field private b:Ldz;


# direct methods
.method public constructor <init>(Lgu;Landroid/view/WindowInsets;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lgq;-><init>(Lgu;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lgr;->b:Ldz;

    return-void
.end method

.method public constructor <init>(Lgu;Lgr;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lgq;-><init>(Lgu;Lgq;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lgr;->b:Ldz;

    return-void
.end method


# virtual methods
.method public final a(IIII)Lgu;
    .locals 1

    iget-object v0, p0, Lgr;->a:Landroid/view/WindowInsets;

    .line 4
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-static {p1}, Lgu;->a(Landroid/view/WindowInsets;)Lgu;

    move-result-object p1

    return-object p1
.end method

.method public final i()Ldz;
    .locals 1

    iget-object v0, p0, Lgr;->b:Ldz;

    if-nez v0, :cond_0

    iget-object v0, p0, Lgr;->a:Landroid/view/WindowInsets;

    .line 3
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getMandatorySystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Ldz;->a(Landroid/graphics/Insets;)Ldz;

    move-result-object v0

    iput-object v0, p0, Lgr;->b:Ldz;

    :cond_0
    iget-object v0, p0, Lgr;->b:Ldz;

    return-object v0
.end method
