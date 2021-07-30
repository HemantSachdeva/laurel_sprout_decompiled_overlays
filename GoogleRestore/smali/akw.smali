.class final synthetic Lakw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final a:Lalb;


# direct methods
.method public constructor <init>(Lalb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lakw;->a:Lalb;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lakw;->a:Lalb;

    invoke-virtual {p1}, Lalb;->P()Lala;

    move-result-object p1

    invoke-interface {p1}, Lala;->f()V

    return-void
.end method
