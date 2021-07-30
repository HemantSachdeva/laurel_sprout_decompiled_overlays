.class public final Lj$/util/StringJoiner;
.super Ljava/lang/Object;
.source "StringJoiner.java"


# instance fields
.field private final delimiter:Ljava/lang/String;

.field private emptyValue:Ljava/lang/String;

.field private final prefix:Ljava/lang/String;

.field private final suffix:Ljava/lang/String;

.field private value:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "The prefix must not be null"

    .line 121
    invoke-static {p2, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The delimiter must not be null"

    .line 122
    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The suffix must not be null"

    .line 123
    invoke-static {p3, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 125
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lj$/util/StringJoiner;->prefix:Ljava/lang/String;

    .line 126
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lj$/util/StringJoiner;->delimiter:Ljava/lang/String;

    .line 127
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lj$/util/StringJoiner;->suffix:Ljava/lang/String;

    .line 128
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object p1, p0, Lj$/util/StringJoiner;->emptyValue:Ljava/lang/String;

    return-void
.end method

.method private prepareBuilder()Ljava/lang/StringBuilder;
    .locals 2

    .line 222
    iget-object v0, p0, Lj$/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 223
    iget-object v1, p0, Lj$/util/StringJoiner;->delimiter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 225
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lj$/util/StringJoiner;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput-object v0, p0, Lj$/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    .line 227
    :goto_0
    iget-object v0, p0, Lj$/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/CharSequence;)Lj$/util/StringJoiner;
    .locals 1

    .line 185
    invoke-direct {p0}, Lj$/util/StringJoiner;->prepareBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public merge(Lj$/util/StringJoiner;)Lj$/util/StringJoiner;
    .locals 3

    .line 209
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    iget-object v0, p1, Lj$/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 215
    invoke-direct {p0}, Lj$/util/StringJoiner;->prepareBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 216
    iget-object v2, p1, Lj$/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    iget-object p1, p1, Lj$/util/StringJoiner;->prefix:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v1, v2, p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 161
    iget-object v0, p0, Lj$/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lj$/util/StringJoiner;->emptyValue:Ljava/lang/String;

    return-object v0

    .line 164
    :cond_0
    iget-object v0, p0, Lj$/util/StringJoiner;->suffix:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lj$/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 167
    :cond_1
    iget-object v0, p0, Lj$/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 168
    iget-object v1, p0, Lj$/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lj$/util/StringJoiner;->suffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    iget-object v2, p0, Lj$/util/StringJoiner;->value:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    return-object v1
.end method
