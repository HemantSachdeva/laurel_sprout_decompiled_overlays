.class final synthetic Lajn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lajp;


# direct methods
.method public constructor <init>(Lajp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lajn;->a:Lajp;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lajn;->a:Lajp;

    iget-object v0, p1, Lajp;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v1, p1, Lajp;->b:Ladc;

    invoke-virtual {p1, v0, v1}, Lajp;->a(Ljava/lang/CharSequence;Ladc;)V

    return-void
.end method
