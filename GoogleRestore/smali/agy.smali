.class public final synthetic Lagy;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/util/function/Supplier;


# instance fields
.field private final a:Lahc;

.field private final b:Landroid/accounts/Account;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lahc;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lagy;->a:Lahc;

    iput-object p2, p0, Lagy;->b:Landroid/accounts/Account;

    iput-object p3, p0, Lagy;->c:Ljava/lang/String;

    iput-object p4, p0, Lagy;->d:Ljava/lang/String;

    iput-object p5, p0, Lagy;->e:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lagy;->a:Lahc;

    iget-object v1, p0, Lagy;->b:Landroid/accounts/Account;

    iget-object v2, p0, Lagy;->c:Ljava/lang/String;

    iget-object v3, p0, Lagy;->d:Ljava/lang/String;

    iget-object v4, p0, Lagy;->e:[Ljava/lang/String;

    iget-object v0, v0, Lahc;->c:Lbmy;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lbmy;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lbpi;

    move-result-object v0

    return-object v0
.end method
