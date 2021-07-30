.class public final synthetic Lago;
.super Ljava/lang/Object;

# interfaces
.implements Lw;


# instance fields
.field private final a:Lu;


# direct methods
.method public constructor <init>(Lu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lago;->a:Lu;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lago;->a:Lu;

    check-cast p1, Lcsi;

    sget-object v1, Lagw;->a:Lagw;

    const/4 v2, 0x0

    invoke-static {p1, v2, v2, v1}, Lagn;->a(Lcsi;Lcsi;Lahe;Lagw;)Lagn;

    move-result-object p1

    invoke-virtual {v0, p1}, Lv;->b(Ljava/lang/Object;)V

    return-void
.end method
