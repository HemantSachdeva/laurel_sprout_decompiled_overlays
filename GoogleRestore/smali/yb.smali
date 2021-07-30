.class final Lyb;
.super Lyp;
.source "PG"


# instance fields
.field final synthetic a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lyb;->a:Landroid/view/View;

    invoke-direct {p0}, Lyp;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lyo;)V
    .locals 2

    iget-object v0, p0, Lyb;->a:Landroid/view/View;

    .line 1
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lzd;->a(Landroid/view/View;F)V

    sget-object v0, Lzd;->b:Lbir;

    .line 2
    invoke-virtual {v0}, Lbir;->a()V

    .line 3
    invoke-virtual {p1, p0}, Lyo;->b(Lyn;)V

    return-void
.end method
