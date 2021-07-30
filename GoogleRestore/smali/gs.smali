.class final Lgs;
.super Lgr;
.source "PG"


# static fields
.field static final b:Lgu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    invoke-static {v0}, Lgu;->a(Landroid/view/WindowInsets;)Lgu;

    move-result-object v0

    sput-object v0, Lgs;->b:Lgu;

    return-void
.end method

.method public constructor <init>(Lgu;Landroid/view/WindowInsets;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lgr;-><init>(Lgu;Landroid/view/WindowInsets;)V

    return-void
.end method

.method public constructor <init>(Lgu;Lgs;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lgr;-><init>(Lgu;Lgr;)V

    return-void
.end method
