.class final synthetic Lajl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private final a:Lajp;


# direct methods
.method public constructor <init>(Lajp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lajl;->a:Lajp;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p1, p0, Lajl;->a:Lajp;

    iget-object p2, p1, Lajp;->c:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    iget-object p3, p1, Lajp;->b:Ladc;

    invoke-virtual {p1, p2, p3}, Lajp;->a(Ljava/lang/CharSequence;Ladc;)V

    const/4 p1, 0x1

    return p1
.end method
