.class final synthetic Laiv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lajb;


# direct methods
.method public constructor <init>(Lajb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laiv;->a:Lajb;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Laiv;->a:Lajb;

    invoke-virtual {p1}, Lajb;->k()Laja;

    move-result-object p1

    invoke-interface {p1}, Laja;->j()V

    return-void
.end method
