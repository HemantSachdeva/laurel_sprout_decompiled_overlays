.class final synthetic Lamd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lamf;


# direct methods
.method public constructor <init>(Lamf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lamd;->a:Lamf;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lamd;->a:Lamf;

    invoke-virtual {p1}, Lamf;->e()Lamp;

    move-result-object p1

    sget-object v0, Lamn;->i:Lamn;

    invoke-interface {p1, v0}, Lamp;->a(Lamn;)V

    return-void
.end method
