.class public Lcom/vkontakte/android/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/Message$FwdMessage;
    }
.end annotation


# static fields
.field public static final ATTACH_AUDIO:I = 0x1

.field public static final ATTACH_DOCUMENT:I = 0x3

.field public static final ATTACH_FWD_MESSAGE:I = 0x4

.field public static final ATTACH_LOCATION:I = 0x5

.field public static final ATTACH_PHOTO:I = 0x0

.field public static final ATTACH_POST:I = 0x6

.field public static final ATTACH_VIDEO:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vkontakte/android/Message;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_FAILED:I = 0x2

.field public static final FLAG_SERVICE:I = 0x4

.field public static final FLAG_UNREAD:I = 0x1


# instance fields
.field public attachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field public displayableText:Ljava/lang/CharSequence;

.field public extras:Landroid/os/Bundle;

.field public fwdMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Message$FwdMessage;",
            ">;"
        }
    .end annotation
.end field

.field public id:I

.field public isServiceMessage:Z

.field public out:Z

.field public peer:I

.field public readState:Z

.field public sendFailed:Z

.field public sender:I

.field public text:Ljava/lang/String;

.field public time:I

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 283
    new-instance v0, Lcom/vkontakte/android/Message$1;

    invoke-direct {v0}, Lcom/vkontakte/android/Message$1;-><init>()V

    sput-object v0, Lcom/vkontakte/android/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    .line 42
    iput-boolean v1, p0, Lcom/vkontakte/android/Message;->out:Z

    .line 47
    iput-boolean v1, p0, Lcom/vkontakte/android/Message;->sendFailed:Z

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    .line 49
    iput-boolean v1, p0, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    .line 50
    iput-boolean v1, p0, Lcom/vkontakte/android/Message;->readState:Z

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentValues;)V
    .locals 16
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 181
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    .line 42
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/vkontakte/android/Message;->out:Z

    .line 47
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/vkontakte/android/Message;->sendFailed:Z

    .line 48
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    .line 49
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    .line 50
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/vkontakte/android/Message;->readState:Z

    .line 51
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    .line 183
    :try_start_0
    const-string v14, "mid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/vkontakte/android/Message;->id:I

    .line 184
    const-string v14, "peer"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/vkontakte/android/Message;->peer:I

    .line 185
    const-string v14, "sender"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/vkontakte/android/Message;->sender:I

    .line 186
    const-string v14, "text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/vkontakte/android/Message;->setText(Ljava/lang/String;)V

    .line 187
    const-string v14, "time"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/vkontakte/android/Message;->time:I

    .line 188
    const-string v14, "flags"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 189
    .local v3, "flags":I
    and-int/lit8 v14, v3, 0x1

    if-nez v14, :cond_1

    const/4 v14, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/vkontakte/android/Message;->readState:Z

    .line 190
    and-int/lit8 v14, v3, 0x2

    if-lez v14, :cond_2

    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/vkontakte/android/Message;->sendFailed:Z

    .line 191
    and-int/lit8 v14, v3, 0x4

    if-lez v14, :cond_3

    const/4 v14, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    .line 192
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    .line 193
    const-string v14, "attachments"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 194
    .local v2, "att":[B
    if-eqz v2, :cond_4

    .line 195
    new-instance v6, Ljava/io/DataInputStream;

    new-instance v14, Ljava/io/ByteArrayInputStream;

    invoke-direct {v14, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v6, v14}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 196
    .local v6, "is":Ljava/io/DataInputStream;
    invoke-virtual {v6}, Ljava/io/DataInputStream;->read()I

    move-result v9

    .line 197
    .local v9, "num":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v9, :cond_4

    .line 198
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v14

    invoke-static {v6, v14}, Lcom/vkontakte/android/Attachment;->deserialize(Ljava/io/DataInputStream;I)Lcom/vkontakte/android/Attachment;

    move-result-object v1

    .line 199
    .local v1, "a":Lcom/vkontakte/android/Attachment;
    if-eqz v1, :cond_0

    .line 200
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 189
    .end local v1    # "a":Lcom/vkontakte/android/Attachment;
    .end local v2    # "att":[B
    .end local v5    # "i":I
    .end local v6    # "is":Ljava/io/DataInputStream;
    .end local v9    # "num":I
    :cond_1
    const/4 v14, 0x0

    goto :goto_0

    .line 190
    :cond_2
    const/4 v14, 0x0

    goto :goto_1

    .line 191
    :cond_3
    const/4 v14, 0x0

    goto :goto_2

    .line 203
    .restart local v2    # "att":[B
    :cond_4
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    .line 204
    const-string v14, "fwd"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 205
    .local v4, "fwd":[B
    if-eqz v4, :cond_5

    .line 206
    new-instance v6, Ljava/io/DataInputStream;

    new-instance v14, Ljava/io/ByteArrayInputStream;

    invoke-direct {v14, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v6, v14}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 207
    .restart local v6    # "is":Ljava/io/DataInputStream;
    invoke-virtual {v6}, Ljava/io/DataInputStream;->read()I

    move-result v9

    .line 208
    .restart local v9    # "num":I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_4
    if-ge v5, v9, :cond_5

    .line 209
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    invoke-static {v6}, Lcom/vkontakte/android/Message$FwdMessage;->deserialize(Ljava/io/DataInputStream;)Lcom/vkontakte/android/Message$FwdMessage;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 212
    .end local v5    # "i":I
    .end local v6    # "is":Ljava/io/DataInputStream;
    .end local v9    # "num":I
    :cond_5
    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkontakte/android/Message;->sender:I

    sget v15, Lcom/vkontakte/android/Global;->uid:I

    if-ne v14, v15, :cond_7

    const/4 v14, 0x1

    :goto_5
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/vkontakte/android/Message;->out:Z

    .line 213
    const-string v14, "extras"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 214
    .local v13, "xtra":Ljava/lang/String;
    if-eqz v13, :cond_6

    .line 215
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 216
    .local v11, "obj":Lorg/json/JSONObject;
    invoke-virtual {v11}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    .line 217
    .local v8, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 218
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 219
    .local v7, "k":Ljava/lang/String;
    invoke-virtual {v11, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 220
    .local v10, "o":Ljava/lang/Object;
    instance-of v14, v10, Ljava/lang/Integer;

    if-eqz v14, :cond_8

    .line 221
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    check-cast v10, Ljava/lang/Integer;

    .end local v10    # "o":Ljava/lang/Object;
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v14, v7, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 229
    .end local v2    # "att":[B
    .end local v3    # "flags":I
    .end local v4    # "fwd":[B
    .end local v7    # "k":Ljava/lang/String;
    .end local v8    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v11    # "obj":Lorg/json/JSONObject;
    .end local v13    # "xtra":Ljava/lang/String;
    :catch_0
    move-exception v12

    .local v12, "x":Ljava/lang/Exception;
    const-string v14, "vk"

    const-string v15, "error parsing message"

    invoke-static {v14, v15, v12}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 230
    .end local v12    # "x":Ljava/lang/Exception;
    :cond_6
    return-void

    .line 212
    .restart local v2    # "att":[B
    .restart local v3    # "flags":I
    .restart local v4    # "fwd":[B
    :cond_7
    const/4 v14, 0x0

    goto :goto_5

    .line 222
    .restart local v7    # "k":Ljava/lang/String;
    .restart local v8    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v10    # "o":Ljava/lang/Object;
    .restart local v11    # "obj":Lorg/json/JSONObject;
    .restart local v13    # "xtra":Ljava/lang/String;
    :cond_8
    :try_start_1
    instance-of v14, v10, Ljava/lang/Boolean;

    if-eqz v14, :cond_9

    .line 223
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    check-cast v10, Ljava/lang/Boolean;

    .end local v10    # "o":Ljava/lang/Object;
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    invoke-virtual {v14, v7, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_6

    .line 225
    .restart local v10    # "o":Ljava/lang/Object;
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    check-cast v10, Ljava/lang/String;

    .end local v10    # "o":Ljava/lang/Object;
    invoke-virtual {v14, v7, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 13
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    iput-object v12, p0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    .line 42
    iput-boolean v11, p0, Lcom/vkontakte/android/Message;->out:Z

    .line 47
    iput-boolean v11, p0, Lcom/vkontakte/android/Message;->sendFailed:Z

    .line 48
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, p0, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    .line 49
    iput-boolean v11, p0, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    .line 50
    iput-boolean v11, p0, Lcom/vkontakte/android/Message;->readState:Z

    .line 51
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, p0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    .line 59
    const/4 v12, 0x0

    :try_start_0
    invoke-virtual {p1, v12}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v12

    iput-object v12, p0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lcom/vkontakte/android/Message;->setText(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/vkontakte/android/Message;->title:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-ne v12, v10, :cond_1

    move v12, v10

    :goto_0
    iput-boolean v12, p0, Lcom/vkontakte/android/Message;->out:Z

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-ne v12, v10, :cond_2

    move v12, v10

    :goto_1
    iput-boolean v12, p0, Lcom/vkontakte/android/Message;->sendFailed:Z

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-ne v12, v10, :cond_3

    move v12, v10

    :goto_2
    iput-boolean v12, p0, Lcom/vkontakte/android/Message;->readState:Z

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    if-ne v12, v10, :cond_4

    :goto_3
    iput-boolean v10, p0, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, p0, Lcom/vkontakte/android/Message;->time:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, p0, Lcom/vkontakte/android/Message;->id:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, p0, Lcom/vkontakte/android/Message;->sender:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    iput v10, p0, Lcom/vkontakte/android/Message;->peer:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 73
    .local v6, "len":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    .line 74
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    if-ge v4, v6, :cond_5

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 77
    .local v2, "bl":I
    new-array v3, v2, [B

    .line 78
    .local v3, "buf":[B
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readByteArray([B)V

    .line 79
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 80
    .local v0, "ais":Ljava/io/ByteArrayInputStream;
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 81
    .local v5, "is":Ljava/io/DataInputStream;
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    invoke-static {v5, v10}, Lcom/vkontakte/android/Attachment;->deserialize(Ljava/io/DataInputStream;I)Lcom/vkontakte/android/Attachment;

    move-result-object v1

    .line 82
    .local v1, "att":Lcom/vkontakte/android/Attachment;
    if-eqz v1, :cond_0

    .line 83
    iget-object v10, p0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .end local v0    # "ais":Ljava/io/ByteArrayInputStream;
    .end local v1    # "att":Lcom/vkontakte/android/Attachment;
    .end local v2    # "bl":I
    .end local v3    # "buf":[B
    .end local v4    # "i":I
    .end local v5    # "is":Ljava/io/DataInputStream;
    .end local v6    # "len":I
    :cond_1
    move v12, v11

    .line 62
    goto :goto_0

    :cond_2
    move v12, v11

    .line 63
    goto :goto_1

    :cond_3
    move v12, v11

    .line 64
    goto :goto_2

    :cond_4
    move v10, v11

    .line 65
    goto :goto_3

    .line 85
    .restart local v4    # "i":I
    .restart local v6    # "len":I
    :cond_5
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 88
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v6, :cond_6

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    new-array v8, v10, [B

    .line 90
    .local v8, "sdata":[B
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readByteArray([B)V

    .line 91
    new-instance v7, Ljava/io/DataInputStream;

    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-direct {v10, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v7, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 92
    .local v7, "s":Ljava/io/DataInputStream;
    iget-object v10, p0, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    invoke-static {v7}, Lcom/vkontakte/android/Message$FwdMessage;->deserialize(Ljava/io/DataInputStream;)Lcom/vkontakte/android/Message$FwdMessage;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 97
    .end local v4    # "i":I
    .end local v6    # "len":I
    .end local v7    # "s":Ljava/io/DataInputStream;
    .end local v8    # "sdata":[B
    :catch_0
    move-exception v9

    .local v9, "x":Ljava/lang/Exception;
    const-string v10, "vk"

    invoke-static {v10, v9}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    .end local v9    # "x":Ljava/lang/Exception;
    :cond_6
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/vkontakte/android/Message$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/vkontakte/android/Message$1;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/vkontakte/android/Message;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/vkontakte/android/Message;)V
    .locals 2
    .param p1, "m"    # Lcom/vkontakte/android/Message;

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    .line 42
    iput-boolean v1, p0, Lcom/vkontakte/android/Message;->out:Z

    .line 47
    iput-boolean v1, p0, Lcom/vkontakte/android/Message;->sendFailed:Z

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    .line 49
    iput-boolean v1, p0, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    .line 50
    iput-boolean v1, p0, Lcom/vkontakte/android/Message;->readState:Z

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    .line 101
    iget-object v0, p1, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/Message;->setText(Ljava/lang/String;)V

    .line 102
    iget-object v0, p1, Lcom/vkontakte/android/Message;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkontakte/android/Message;->title:Ljava/lang/String;

    .line 103
    iget-boolean v0, p1, Lcom/vkontakte/android/Message;->out:Z

    iput-boolean v0, p0, Lcom/vkontakte/android/Message;->out:Z

    .line 104
    iget-boolean v0, p1, Lcom/vkontakte/android/Message;->sendFailed:Z

    iput-boolean v0, p0, Lcom/vkontakte/android/Message;->sendFailed:Z

    .line 105
    iget-boolean v0, p1, Lcom/vkontakte/android/Message;->readState:Z

    iput-boolean v0, p0, Lcom/vkontakte/android/Message;->readState:Z

    .line 106
    iget-boolean v0, p1, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    iput-boolean v0, p0, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    .line 107
    iget v0, p1, Lcom/vkontakte/android/Message;->time:I

    iput v0, p0, Lcom/vkontakte/android/Message;->time:I

    .line 108
    iget v0, p1, Lcom/vkontakte/android/Message;->id:I

    iput v0, p0, Lcom/vkontakte/android/Message;->id:I

    .line 109
    iget v0, p1, Lcom/vkontakte/android/Message;->sender:I

    iput v0, p0, Lcom/vkontakte/android/Message;->sender:I

    .line 110
    iget v0, p1, Lcom/vkontakte/android/Message;->peer:I

    iput v0, p0, Lcom/vkontakte/android/Message;->peer:I

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    .line 112
    iget-object v0, p0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    .line 114
    iget-object v0, p0, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 115
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "obj"    # Lorg/json/JSONObject;

    .prologue
    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/vkontakte/android/Message;-><init>(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 11
    .param p1, "obj"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p2, "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local p3, "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    iput-object v8, p0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    .line 42
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/vkontakte/android/Message;->out:Z

    .line 47
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/vkontakte/android/Message;->sendFailed:Z

    .line 48
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    .line 49
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    .line 50
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/vkontakte/android/Message;->readState:Z

    .line 51
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    .line 123
    :try_start_0
    const-string v8, "id"

    const-string v9, "mid"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p1, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/vkontakte/android/Message;->id:I

    .line 124
    const-string v8, "from_id"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 125
    const-string v8, "from_id"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/vkontakte/android/Message;->sender:I

    .line 126
    const-string v8, "chat_id"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    const v8, 0x77359400

    const-string v9, "chat_id"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    :goto_0
    iput v8, p0, Lcom/vkontakte/android/Message;->peer:I

    .line 134
    :goto_1
    const-string v8, "body"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/vkontakte/android/Message;->setText(Ljava/lang/String;)V

    .line 135
    const-string v8, "date"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/vkontakte/android/Message;->time:I

    .line 136
    const-string v8, "title"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/vkontakte/android/Message;->title:Ljava/lang/String;

    .line 137
    const-string v8, "out"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_d

    const/4 v8, 0x1

    :goto_2
    iput-boolean v8, p0, Lcom/vkontakte/android/Message;->out:Z

    .line 138
    const-string v8, "read_state"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_e

    const/4 v8, 0x1

    :goto_3
    iput-boolean v8, p0, Lcom/vkontakte/android/Message;->readState:Z

    .line 139
    const-string v8, "action"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 140
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    .line 142
    iget-object v8, p0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v9, "action"

    const-string v10, "action"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v8, "action_text"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 144
    iget-object v8, p0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v9, "action_text"

    const-string v10, "action_text"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_0
    const-string v8, "action_mid"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 147
    iget-object v8, p0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v9, "action_mid"

    const-string v10, "action_mid"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 149
    :cond_1
    const-string v8, "action_email"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 150
    iget-object v8, p0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v9, "action_email"

    const-string v10, "action_email"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_2
    iget-object v8, p0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v9, "action_mid"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 154
    iget-object v8, p0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v9, "action_mid"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 155
    .local v0, "actMid":I
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Integer;

    const/4 v9, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x3

    invoke-static {v8, v9}, Lcom/vkontakte/android/data/Friends;->getUsersBlocking(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v6

    .line 156
    .local v6, "u":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    iget-object v9, p0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v10, "action_user_name_acc"

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkontakte/android/UserProfile;

    iget-object v8, v8, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v9, v10, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .end local v0    # "actMid":I
    .end local v6    # "u":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    .line 159
    const-string v8, "attachments"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 160
    const-string v8, "attachments"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 161
    .local v2, "atts":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v4, v8, :cond_f

    .line 162
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {v8}, Lcom/vkontakte/android/Attachment;->parse(Lorg/json/JSONObject;)Lcom/vkontakte/android/Attachment;

    move-result-object v1

    .line 163
    .local v1, "att":Lcom/vkontakte/android/Attachment;
    if-eqz v1, :cond_4

    .line 164
    iget-object v8, p0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 126
    .end local v1    # "att":Lcom/vkontakte/android/Attachment;
    .end local v2    # "atts":Lorg/json/JSONArray;
    .end local v4    # "i":I
    :cond_5
    const-string v8, "user_id"

    const-string v9, "from_id"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p1, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    goto/16 :goto_0

    .line 127
    :cond_6
    const-string v8, "uid"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 128
    const-string v8, "out"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    sget v8, Lcom/vkontakte/android/Global;->uid:I

    :goto_5
    iput v8, p0, Lcom/vkontakte/android/Message;->sender:I

    .line 129
    const-string v8, "chat_id"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    const v8, 0x77359400

    const-string v9, "chat_id"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    :goto_6
    iput v8, p0, Lcom/vkontakte/android/Message;->peer:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 178
    :catch_0
    move-exception v7

    .local v7, "x":Ljava/lang/Exception;
    const-string v8, "vk"

    const-string v9, "error parsing message"

    invoke-static {v8, v9, v7}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 179
    .end local v7    # "x":Ljava/lang/Exception;
    :cond_7
    :goto_7
    return-void

    .line 128
    :cond_8
    :try_start_1
    const-string v8, "uid"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_5

    .line 129
    :cond_9
    const-string v8, "uid"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_6

    .line 131
    :cond_a
    const-string v8, "out"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_b

    sget v8, Lcom/vkontakte/android/Global;->uid:I

    :goto_8
    iput v8, p0, Lcom/vkontakte/android/Message;->sender:I

    .line 132
    const-string v8, "chat_id"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    const v8, 0x77359400

    const-string v9, "chat_id"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    :goto_9
    iput v8, p0, Lcom/vkontakte/android/Message;->peer:I

    goto/16 :goto_1

    .line 131
    :cond_b
    const-string v8, "user_id"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_8

    .line 132
    :cond_c
    const-string v8, "user_id"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_9

    .line 137
    :cond_d
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 138
    :cond_e
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 167
    :cond_f
    iget-object v8, p0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-static {v8}, Lcom/vkontakte/android/Attachment;->sort(Ljava/util/ArrayList;)V

    .line 168
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    .line 169
    const-string v8, "fwd_messages"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 170
    const-string v8, "fwd_messages"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 171
    .local v3, "fwds":Lorg/json/JSONArray;
    iget-object v8, p0, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    invoke-direct {p0, v3, p2, p3}, Lcom/vkontakte/android/Message;->parseFwdMessages(Lorg/json/JSONArray;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 173
    .end local v3    # "fwds":Lorg/json/JSONArray;
    :cond_10
    const-string v8, "geo"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 174
    const-string v8, "geo"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 175
    .local v5, "jg":Lorg/json/JSONObject;
    const-string v8, "coordinates"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 176
    iget-object v8, p0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/vkontakte/android/Attachment;->parseGeo(Lorg/json/JSONObject;)Lcom/vkontakte/android/GeoAttachment;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7
.end method

.method private parseFwdMessages(Lorg/json/JSONArray;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "msgs"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkontakte/android/Message$FwdMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 355
    .local p2, "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local p3, "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 356
    .local v6, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message$FwdMessage;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_5

    .line 357
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 358
    .local v4, "jm":Lorg/json/JSONObject;
    new-instance v5, Lcom/vkontakte/android/Message$FwdMessage;

    invoke-direct {v5}, Lcom/vkontakte/android/Message$FwdMessage;-><init>()V

    .line 359
    .local v5, "m":Lcom/vkontakte/android/Message$FwdMessage;
    const-string v7, "user_id"

    const-string v8, "uid"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v5, Lcom/vkontakte/android/Message$FwdMessage;->sender:I

    .line 360
    const-string v7, "date"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v5, Lcom/vkontakte/android/Message$FwdMessage;->time:I

    .line 361
    const-string v7, "body"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/vkontakte/android/Message$FwdMessage;->setText(Ljava/lang/String;)V

    .line 362
    iget v7, v5, Lcom/vkontakte/android/Message$FwdMessage;->sender:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget v7, v5, Lcom/vkontakte/android/Message$FwdMessage;->sender:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    :goto_1
    iput-object v7, v5, Lcom/vkontakte/android/Message$FwdMessage;->username:Ljava/lang/String;

    .line 363
    iget v7, v5, Lcom/vkontakte/android/Message$FwdMessage;->sender:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget v7, v5, Lcom/vkontakte/android/Message$FwdMessage;->sender:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    :goto_2
    iput-object v7, v5, Lcom/vkontakte/android/Message$FwdMessage;->userphoto:Ljava/lang/String;

    .line 364
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v5, Lcom/vkontakte/android/Message$FwdMessage;->attachments:Ljava/util/ArrayList;

    .line 365
    const-string v7, "attachments"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 366
    const-string v7, "attachments"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 367
    .local v1, "atts":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 368
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-static {v7}, Lcom/vkontakte/android/Attachment;->parse(Lorg/json/JSONObject;)Lcom/vkontakte/android/Attachment;

    move-result-object v0

    .line 369
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    if-eqz v0, :cond_0

    .line 370
    iget-object v7, v5, Lcom/vkontakte/android/Message$FwdMessage;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 362
    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    .end local v1    # "atts":Lorg/json/JSONArray;
    .end local v3    # "j":I
    :cond_1
    const-string v7, "DELETED"

    goto :goto_1

    .line 363
    :cond_2
    const-string v7, "http://vk.com/images/camera_c.gif"

    goto :goto_2

    .line 373
    :cond_3
    iget-object v7, v5, Lcom/vkontakte/android/Message$FwdMessage;->attachments:Ljava/util/ArrayList;

    invoke-static {v7}, Lcom/vkontakte/android/Attachment;->sort(Ljava/util/ArrayList;)V

    .line 374
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v5, Lcom/vkontakte/android/Message$FwdMessage;->fwdMessages:Ljava/util/ArrayList;

    .line 375
    const-string v7, "fwd_messages"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 376
    iget-object v7, v5, Lcom/vkontakte/android/Message$FwdMessage;->fwdMessages:Ljava/util/ArrayList;

    const-string v8, "fwd_messages"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-direct {p0, v8, p2, p3}, Lcom/vkontakte/android/Message;->parseFwdMessages(Lorg/json/JSONArray;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 378
    :cond_4
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 380
    .end local v4    # "jm":Lorg/json/JSONObject;
    .end local v5    # "m":Lcom/vkontakte/android/Message$FwdMessage;
    :cond_5
    return-object v6
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    return v0
.end method

.method public forward()Lcom/vkontakte/android/Message$FwdMessage;
    .locals 3

    .prologue
    .line 340
    new-instance v0, Lcom/vkontakte/android/Message$FwdMessage;

    invoke-direct {v0}, Lcom/vkontakte/android/Message$FwdMessage;-><init>()V

    .line 341
    .local v0, "f":Lcom/vkontakte/android/Message$FwdMessage;
    iget v1, p0, Lcom/vkontakte/android/Message;->sender:I

    iput v1, v0, Lcom/vkontakte/android/Message$FwdMessage;->sender:I

    .line 342
    iget v1, p0, Lcom/vkontakte/android/Message;->time:I

    iput v1, v0, Lcom/vkontakte/android/Message$FwdMessage;->time:I

    .line 343
    iget-object v1, p0, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkontakte/android/Message$FwdMessage;->text:Ljava/lang/String;

    .line 344
    iget-object v1, p0, Lcom/vkontakte/android/Message;->displayableText:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/vkontakte/android/Message$FwdMessage;->displayableText:Ljava/lang/CharSequence;

    .line 345
    iget v1, p0, Lcom/vkontakte/android/Message;->id:I

    iput v1, v0, Lcom/vkontakte/android/Message$FwdMessage;->id:I

    .line 346
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/vkontakte/android/Message$FwdMessage;->attachments:Ljava/util/ArrayList;

    .line 348
    iget-object v1, v0, Lcom/vkontakte/android/Message$FwdMessage;->attachments:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 349
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/vkontakte/android/Message$FwdMessage;->fwdMessages:Ljava/util/ArrayList;

    .line 350
    iget-object v1, v0, Lcom/vkontakte/android/Message$FwdMessage;->fwdMessages:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 351
    return-object v0
.end method

.method public getServiceMessageText(Lcom/vkontakte/android/UserProfile;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "senderProfile"    # Lcom/vkontakte/android/UserProfile;
    .param p2, "userAcc"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 299
    const-string v1, ""

    .line 300
    .local v1, "dtext":Ljava/lang/String;
    iget-object v4, p0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v5, "action"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "act":Ljava/lang/String;
    const-string v4, "chat_photo_update"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 302
    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-boolean v4, p1, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v4, :cond_0

    const v4, 0x7f0d0063

    :goto_0
    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p1, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-virtual {v5, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 336
    :goto_1
    return-object v1

    .line 302
    :cond_0
    const v4, 0x7f0d0064

    goto :goto_0

    .line 303
    :cond_1
    const-string v4, "chat_photo_remove"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 304
    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-boolean v4, p1, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v4, :cond_2

    const v4, 0x7f0d0061

    :goto_2
    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p1, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-virtual {v5, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const v4, 0x7f0d0062

    goto :goto_2

    .line 305
    :cond_3
    const-string v4, "chat_create"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 306
    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-boolean v4, p1, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v4, :cond_4

    const v4, 0x7f0d028f

    :goto_3
    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p1, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v8, "action_text"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v5, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    const v4, 0x7f0d0290

    goto :goto_3

    .line 307
    :cond_5
    const-string v4, "chat_title_update"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 308
    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-boolean v4, p1, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v4, :cond_6

    const v4, 0x7f0d0291

    :goto_4
    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p1, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v8, "action_text"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v5, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_6
    const v4, 0x7f0d0292

    goto :goto_4

    .line 309
    :cond_7
    const-string v4, "chat_invite_user"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 310
    iget-object v4, p0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v5, "action_mid"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 311
    .local v3, "uid":I
    iget v4, p0, Lcom/vkontakte/android/Message;->sender:I

    if-ne v3, v4, :cond_9

    .line 312
    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-boolean v4, p1, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v4, :cond_8

    const v4, 0x7f0d0299

    :goto_5
    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p1, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-virtual {v5, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_8
    const v4, 0x7f0d029a

    goto :goto_5

    .line 315
    :cond_9
    iget-object v4, p0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v5, "action_email"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 316
    iget-object v4, p0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v5, "action_email"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 319
    .local v2, "name":Ljava/lang/String;
    :goto_6
    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-boolean v4, p1, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v4, :cond_b

    const v4, 0x7f0d0293

    :goto_7
    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p1, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v7, v6, v8

    aput-object v2, v6, v9

    invoke-virtual {v5, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 318
    .end local v2    # "name":Ljava/lang/String;
    :cond_a
    move-object v2, p2

    .restart local v2    # "name":Ljava/lang/String;
    goto :goto_6

    .line 319
    :cond_b
    const v4, 0x7f0d0294

    goto :goto_7

    .line 321
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "uid":I
    :cond_c
    const-string v4, "chat_kick_user"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 322
    iget-object v4, p0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v5, "action_mid"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 323
    .restart local v3    # "uid":I
    iget v4, p0, Lcom/vkontakte/android/Message;->sender:I

    if-ne v3, v4, :cond_e

    .line 324
    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-boolean v4, p1, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v4, :cond_d

    const v4, 0x7f0d0297

    :goto_8
    new-array v6, v9, [Ljava/lang/Object;

    iget-object v7, p1, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v7, v6, v8

    invoke-virtual {v5, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_d
    const v4, 0x7f0d0298

    goto :goto_8

    .line 327
    :cond_e
    iget-object v4, p0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v5, "action_email"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 328
    iget-object v4, p0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v5, "action_email"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 331
    .restart local v2    # "name":Ljava/lang/String;
    :goto_9
    sget-object v4, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-boolean v4, p1, Lcom/vkontakte/android/UserProfile;->f:Z

    if-eqz v4, :cond_10

    const v4, 0x7f0d0295

    :goto_a
    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p1, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    aput-object v7, v6, v8

    aput-object v2, v6, v9

    invoke-virtual {v5, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 330
    .end local v2    # "name":Ljava/lang/String;
    :cond_f
    move-object v2, p2

    .restart local v2    # "name":Ljava/lang/String;
    goto :goto_9

    .line 331
    :cond_10
    const v4, 0x7f0d0296

    goto :goto_a

    .line 334
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "uid":I
    :cond_11
    const-string v1, ""

    goto/16 :goto_1
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/String;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    .line 234
    invoke-static {p1}, Lcom/vkontakte/android/LinkParser;->parseLinks(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/Message;->displayableText:Ljava/lang/CharSequence;

    .line 235
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/vkontakte/android/Message;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    const-string v2, "action"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 10
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 242
    iget-object v7, p0, Lcom/vkontakte/android/Message;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 243
    iget-object v7, p0, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    iget-object v7, p0, Lcom/vkontakte/android/Message;->title:Ljava/lang/String;

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    iget-boolean v7, p0, Lcom/vkontakte/android/Message;->out:Z

    if-eqz v7, :cond_0

    move v7, v8

    :goto_0
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    iget-boolean v7, p0, Lcom/vkontakte/android/Message;->sendFailed:Z

    if-eqz v7, :cond_1

    move v7, v8

    :goto_1
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    iget-boolean v7, p0, Lcom/vkontakte/android/Message;->readState:Z

    if-eqz v7, :cond_2

    move v7, v8

    :goto_2
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    iget-boolean v7, p0, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    if-eqz v7, :cond_3

    :goto_3
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    iget v7, p0, Lcom/vkontakte/android/Message;->time:I

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    iget v7, p0, Lcom/vkontakte/android/Message;->id:I

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    iget v7, p0, Lcom/vkontakte/android/Message;->sender:I

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    iget v7, p0, Lcom/vkontakte/android/Message;->peer:I

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    iget-object v7, p0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    if-nez v7, :cond_4

    move v7, v9

    :goto_4
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    iget-object v7, p0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    if-eqz v7, :cond_5

    .line 256
    iget-object v7, p0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 258
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    :try_start_0
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 259
    .local v6, "os":Ljava/io/ByteArrayOutputStream;
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, v7}, Lcom/vkontakte/android/Attachment;->serialize(Ljava/io/DataOutputStream;)V

    .line 260
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 261
    .local v1, "b":[B
    array-length v7, v1

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 263
    .end local v1    # "b":[B
    .end local v6    # "os":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v7

    goto :goto_5

    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_0
    move v7, v9

    .line 245
    goto :goto_0

    :cond_1
    move v7, v9

    .line 246
    goto :goto_1

    :cond_2
    move v7, v9

    .line 247
    goto :goto_2

    :cond_3
    move v8, v9

    .line 248
    goto :goto_3

    .line 254
    :cond_4
    iget-object v7, p0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    goto :goto_4

    .line 266
    :cond_5
    iget-object v7, p0, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    if-nez v7, :cond_7

    :goto_6
    invoke-virtual {p1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    iget-object v7, p0, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    if-eqz v7, :cond_6

    .line 270
    :try_start_1
    iget-object v7, p0, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkontakte/android/Message$FwdMessage;

    .line 271
    .local v5, "m":Lcom/vkontakte/android/Message$FwdMessage;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 272
    .local v3, "buf":Ljava/io/ByteArrayOutputStream;
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 273
    .local v6, "os":Ljava/io/DataOutputStream;
    invoke-virtual {v5, v6}, Lcom/vkontakte/android/Message$FwdMessage;->serialize(Ljava/io/DataOutputStream;)V

    .line 274
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 275
    .local v2, "bb":[B
    array-length v7, v2

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    .line 278
    .end local v2    # "bb":[B
    .end local v3    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "m":Lcom/vkontakte/android/Message$FwdMessage;
    .end local v6    # "os":Ljava/io/DataOutputStream;
    :catch_1
    move-exception v7

    .line 281
    :cond_6
    return-void

    .line 266
    :cond_7
    iget-object v7, p0, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    goto :goto_6
.end method
