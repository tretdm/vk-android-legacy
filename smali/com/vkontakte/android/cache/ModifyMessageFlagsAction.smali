.class public Lcom/vkontakte/android/cache/ModifyMessageFlagsAction;
.super Lcom/vkontakte/android/cache/MessagesAction;
.source "ModifyMessageFlagsAction.java"


# static fields
.field public static final ACTION_CLEAR:I = 0x1

.field public static final ACTION_SET:I


# instance fields
.field private action:I

.field private flags:I

.field private mid:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "_mid"    # I
    .param p2, "_flags"    # I
    .param p3, "_action"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/vkontakte/android/cache/MessagesAction;-><init>()V

    .line 17
    iput p1, p0, Lcom/vkontakte/android/cache/ModifyMessageFlagsAction;->mid:I

    .line 18
    iput p2, p0, Lcom/vkontakte/android/cache/ModifyMessageFlagsAction;->flags:I

    .line 19
    iput p3, p0, Lcom/vkontakte/android/cache/ModifyMessageFlagsAction;->action:I

    .line 20
    return-void
.end method


# virtual methods
.method public apply(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 24
    const-string v0, "flags"

    .line 25
    .local v0, "flagsAct":Ljava/lang/String;
    iget v1, p0, Lcom/vkontakte/android/cache/ModifyMessageFlagsAction;->action:I

    if-nez v1, :cond_1

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "flags|"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/vkontakte/android/cache/ModifyMessageFlagsAction;->flags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UPDATE messages SET flags="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE mid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vkontakte/android/cache/ModifyMessageFlagsAction;->mid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 32
    return-void

    .line 27
    :cond_1
    iget v1, p0, Lcom/vkontakte/android/cache/ModifyMessageFlagsAction;->action:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "flags&"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/vkontakte/android/cache/ModifyMessageFlagsAction;->flags:I

    xor-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
