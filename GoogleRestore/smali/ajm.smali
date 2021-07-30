.class final synthetic Lajm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lajp;


# direct methods
.method public constructor <init>(Lajp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lajm;->a:Lajp;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lajm;->a:Lajp;

    iget-object p1, p1, Lajp;->a:Lajg;

    invoke-interface {p1}, Lajg;->g()V

    return-void
.end method
