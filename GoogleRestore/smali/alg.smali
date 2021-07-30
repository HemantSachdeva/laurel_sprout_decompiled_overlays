.class final synthetic Lalg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lalj;


# direct methods
.method public constructor <init>(Lalj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lalg;->a:Lalj;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lalg;->a:Lalj;

    invoke-virtual {p1}, Lalj;->e()Lali;

    move-result-object p1

    invoke-interface {p1}, Lali;->b()V

    return-void
.end method
