.class final synthetic Lapo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final a:Lapq;


# direct methods
.method public constructor <init>(Lapq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapo;->a:Lapq;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lapo;->a:Lapq;

    invoke-virtual {p1}, Lba;->r()Lbc;

    move-result-object p1

    check-cast p1, Lapp;

    invoke-interface {p1}, Lapp;->g()V

    return-void
.end method
