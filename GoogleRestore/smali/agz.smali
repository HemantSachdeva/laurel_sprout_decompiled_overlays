.class public final synthetic Lagz;
.super Ljava/lang/Object;

# interfaces
.implements Lajv;


# instance fields
.field private final a:Lahc;


# direct methods
.method public constructor <init>(Lahc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lagz;->a:Lahc;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;I)V
    .locals 3

    iget-object v0, p0, Lagz;->a:Lahc;

    check-cast p1, Ljava/lang/Void;

    sget-object p1, Lahc;->a:Lacw;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Restore device and SIM contacts succeeded."

    invoke-virtual {p1, v2, v1}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, v0, Lahc;->d:Lacy;

    sget-object v1, Laxl;->c:Laxl;

    invoke-virtual {p1, v1, p2}, Lacy;->a(Laxl;I)V

    invoke-static {}, Lahc;->a()V

    iget-object p1, v0, Lahc;->b:Lahb;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lahb;->b(Z)V

    return-void
.end method
