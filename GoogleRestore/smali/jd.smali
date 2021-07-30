.class final Ljd;
.super Lgk;
.source "PG"


# instance fields
.field final synthetic a:Ljg;


# direct methods
.method public constructor <init>(Ljg;)V
    .locals 0

    iput-object p1, p0, Ljd;->a:Ljg;

    invoke-direct {p0}, Lgk;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-object v0, p0, Ljd;->a:Ljg;

    const/4 v1, 0x0

    iput-object v1, v0, Ljg;->n:Ljx;

    iget-object v0, v0, Ljg;->c:Landroid/support/v7/widget/ActionBarContainer;

    .line 1
    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContainer;->requestLayout()V

    return-void
.end method
