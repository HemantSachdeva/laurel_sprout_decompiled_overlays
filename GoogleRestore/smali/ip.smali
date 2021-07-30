.class final Lip;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# instance fields
.field final synthetic a:Liq;


# direct methods
.method public constructor <init>(Liq;)V
    .locals 0

    iput-object p1, p0, Lip;->a:Liq;

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lip;->a:Liq;

    .line 2
    invoke-virtual {p1}, Liq;->a()V

    return-void
.end method
