.class final synthetic Laic;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Laim;


# direct methods
.method public constructor <init>(Laim;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laic;->a:Laim;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Laic;->a:Laim;

    invoke-virtual {p1}, Laim;->P()Lail;

    move-result-object p1

    invoke-interface {p1}, Lail;->t()V

    return-void
.end method
