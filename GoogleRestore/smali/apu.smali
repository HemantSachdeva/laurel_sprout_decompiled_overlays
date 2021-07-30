.class final synthetic Lapu;
.super Ljava/lang/Object;

# interfaces
.implements Laql;


# static fields
.field static final a:Laql;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lapu;

    invoke-direct {v0}, Lapu;-><init>()V

    sput-object v0, Lapu;->a:Laql;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;I)V
    .locals 2

    sget-object p1, Lapx;->a:Laqd;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x36

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Retrying to fetch FRP status, retry number "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
