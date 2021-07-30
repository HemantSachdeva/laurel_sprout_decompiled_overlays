.class final synthetic Laib;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Laim;


# direct methods
.method public constructor <init>(Laim;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laib;->a:Laim;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Laib;->a:Laim;

    invoke-virtual {p1}, Laim;->P()Lail;

    move-result-object v0

    iget-object p1, p1, Laim;->Z:Ljava/util/Map;

    invoke-interface {v0, p1}, Lail;->c(Ljava/util/Map;)V

    return-void
.end method
