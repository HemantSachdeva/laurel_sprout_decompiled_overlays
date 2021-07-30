.class final synthetic Lalw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lalz;


# direct methods
.method public constructor <init>(Lalz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lalw;->a:Lalz;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lalw;->a:Lalz;

    invoke-virtual {p1}, Lalz;->e()Laly;

    move-result-object p1

    invoke-interface {p1}, Laly;->d()V

    return-void
.end method
