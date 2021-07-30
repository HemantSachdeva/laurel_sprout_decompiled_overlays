.class final synthetic Lall;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lalp;


# direct methods
.method public constructor <init>(Lalp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lall;->a:Lalp;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lall;->a:Lalp;

    invoke-virtual {p1}, Lalp;->e()Lamp;

    move-result-object p1

    sget-object v0, Lamn;->e:Lamn;

    invoke-interface {p1, v0}, Lamp;->a(Lamn;)V

    return-void
.end method
