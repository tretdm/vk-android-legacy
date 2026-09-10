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

.field public params:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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
    .line 242
    new-instance v0, Lcom/vkontakte/android/Message$1;

    invoke-direct {v0}, Lcom/vkontakte/android/Message$1;-><init>()V

    .line 241
    sput-object v0, Lcom/vkontakte/android/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 250
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v1, p0, Lcom/vkontakte/android/Message;->out:Z

    .line 42
    iput-boolean v1, p0, Lcom/vkontakte/android/Message;->sendFailed:Z

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    .line 44
    iput-boolean v1, p0, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    .line 45
    iput-boolean v1, p0, Lcom/vkontakte/android/Message;->readState:Z

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentValues;)V
    .locals 11
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v8, p0, Lcom/vkontakte/android/Message;->out:Z

    .line 42
    iput-boolean v8, p0, Lcom/vkontakte/android/Message;->sendFailed:Z

    .line 43
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    .line 44
    iput-boolean v8, p0, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    .line 45
    iput-boolean v8, p0, Lcom/vkontakte/android/Message;->readState:Z

    .line 46
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    .line 159
    :try_start_0
    const-string v9, "mid"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, p0, Lcom/vkontakte/android/Message;->id:I

    .line 160
    const-string v9, "peer"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, p0, Lcom/vkontakte/android/Message;->peer:I

    .line 161
    const-string v9, "sender"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, p0, Lcom/vkontakte/android/Message;->sender:I

    .line 162
    const-string v9, "text"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/vkontakte/android/Message;->setText(Ljava/lang/String;)V

    .line 163
    const-string v9, "time"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, p0, Lcom/vkontakte/android/Message;->time:I

    .line 164
    const-string v9, "flags"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 165
    .local v1, "flags":I
    and-int/lit8 v9, v1, 0x1

    if-nez v9, :cond_2

    move v9, v7

    :goto_0
    iput-boolean v9, p0, Lcom/vkontakte/android/Message;->readState:Z

    .line 166
    and-int/lit8 v9, v1, 0x2

    if-lez v9, :cond_3

    move v9, v7

    :goto_1
    iput-boolean v9, p0, Lcom/vkontakte/android/Message;->sendFailed:Z

    .line 167
    and-int/lit8 v9, v1, 0x4

    if-lez v9, :cond_4

    move v9, v7

    :goto_2
    iput-boolean v9, p0, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    .line 168
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    .line 169
    const-string v9, "attachments"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 170
    .local v0, "att":[B
    if-eqz v0, :cond_0

    .line 171
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 172
    .local v4, "is":Ljava/io/DataInputStream;
    invoke-virtual {v4}, Ljava/io/DataInputStream;->read()I

    move-result v5

    .line 173
    .local v5, "num":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-lt v3, v5, :cond_5

    .line 177
    .end local v3    # "i":I
    .end local v4    # "is":Ljava/io/DataInputStream;
    .end local v5    # "num":I
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    .line 178
    const-string v9, "fwd"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 179
    .local v2, "fwd":[B
    if-eqz v2, :cond_1

    .line 180
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 181
    .restart local v4    # "is":Ljava/io/DataInputStream;
    invoke-virtual {v4}, Ljava/io/DataInputStream;->read()I

    move-result v5

    .line 182
    .restart local v5    # "num":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    if-lt v3, v5, :cond_6

    .line 186
    .end local v3    # "i":I
    .end local v4    # "is":Ljava/io/DataInputStream;
    .end local v5    # "num":I
    :cond_1
    iget v9, p0, Lcom/vkontakte/android/Message;->sender:I

    sget v10, Lcom/vkontakte/android/Global;->uid:I

    if-ne v9, v10, :cond_7

    :goto_5
    iput-boolean v7, p0, Lcom/vkontakte/android/Message;->out:Z

    .line 188
    .end local v0    # "att":[B
    .end local v1    # "flags":I
    .end local v2    # "fwd":[B
    :goto_6
    return-void

    .restart local v1    # "flags":I
    :cond_2
    move v9, v8

    .line 165
    goto :goto_0

    :cond_3
    move v9, v8

    .line 166
    goto :goto_1

    :cond_4
    move v9, v8

    .line 167
    goto :goto_2

    .line 174
    .restart local v0    # "att":[B
    .restart local v3    # "i":I
    .restart local v4    # "is":Ljava/io/DataInputStream;
    .restart local v5    # "num":I
    :cond_5
    iget-object v9, p0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    invoke-static {v4, v10}, Lcom/vkontakte/android/Attachment;->deserialize(Ljava/io/DataInputStream;I)Lcom/vkontakte/android/Attachment;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 183
    .restart local v2    # "fwd":[B
    :cond_6
    iget-object v9, p0, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/vkontakte/android/Message$FwdMessage;->deserialize(Ljava/io/DataInputStream;)Lcom/vkontakte/android/Message$FwdMessage;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .end local v3    # "i":I
    .end local v4    # "is":Ljava/io/DataInputStream;
    .end local v5    # "num":I
    :cond_7
    move v7, v8

    .line 186
    goto :goto_5

    .line 187
    .end local v0    # "att":[B
    .end local v1    # "flags":I
    .end local v2    # "fwd":[B
    :catch_0
    move-exception v6

    .local v6, "x":Ljava/lang/Exception;
    const-string v7, "vk"

    const-string v8, "error parsing message"

    invoke-static {v7, v8, v6}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 12
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v10, p0, Lcom/vkontakte/android/Message;->out:Z

    .line 42
    iput-boolean v10, p0, Lcom/vkontakte/android/Message;->sendFailed:Z

    .line 43
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    .line 44
    iput-boolean v10, p0, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    .line 45
    iput-boolean v10, p0, Lcom/vkontakte/android/Message;->readState:Z

    .line 46
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    .line 54
    const/4 v11, 0x0

    :try_start_0
    invoke-virtual {p1, v11}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v11

    iput-object v11, p0, Lcom/vkontakte/android/Message;->params:Ljava/util/HashMap;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/vkontakte/android/Message;->setText(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/vkontakte/android/Message;->title:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v9, :cond_0

    move v11, v9

    :goto_0
    iput-boolean v11, p0, Lcom/vkontakte/android/Message;->out:Z

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v9, :cond_1

    move v11, v9

    :goto_1
    iput-boolean v11, p0, Lcom/vkontakte/android/Message;->sendFailed:Z

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v9, :cond_2

    move v11, v9

    :goto_2
    iput-boolean v11, p0, Lcom/vkontakte/android/Message;->readState:Z

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-ne v11, v9, :cond_3

    :goto_3
    iput-boolean v9, p0, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, p0, Lcom/vkontakte/android/Message;->time:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, p0, Lcom/vkontakte/android/Message;->id:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, p0, Lcom/vkontakte/android/Message;->sender:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, p0, Lcom/vkontakte/android/Message;->peer:I

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 68
    .local v5, "len":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    .line 69
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    if-lt v3, v5, :cond_4

    .line 78
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 80
    const-string v9, "vk"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "fwd len="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", avail="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/vkontakte/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const/4 v3, 0x0

    :goto_5
    if-lt v3, v5, :cond_5

    .line 91
    .end local v3    # "i":I
    .end local v5    # "len":I
    :goto_6
    return-void

    :cond_0
    move v11, v10

    .line 57
    goto :goto_0

    :cond_1
    move v11, v10

    .line 58
    goto :goto_1

    :cond_2
    move v11, v10

    .line 59
    goto :goto_2

    :cond_3
    move v9, v10

    .line 60
    goto :goto_3

    .line 70
    .restart local v3    # "i":I
    .restart local v5    # "len":I
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 72
    .local v1, "bl":I
    new-array v2, v1, [B

    .line 73
    .local v2, "buf":[B
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 74
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 75
    .local v0, "ais":Ljava/io/ByteArrayInputStream;
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 76
    .local v4, "is":Ljava/io/DataInputStream;
    iget-object v9, p0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    invoke-static {v4, v10}, Lcom/vkontakte/android/Attachment;->deserialize(Ljava/io/DataInputStream;I)Lcom/vkontakte/android/Attachment;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 82
    .end local v0    # "ais":Ljava/io/ByteArrayInputStream;
    .end local v1    # "bl":I
    .end local v2    # "buf":[B
    .end local v4    # "is":Ljava/io/DataInputStream;
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    new-array v7, v9, [B

    .line 83
    .local v7, "sdata":[B
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readByteArray([B)V

    .line 84
    new-instance v6, Ljava/io/DataInputStream;

    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-direct {v9, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v6, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 85
    .local v6, "s":Ljava/io/DataInputStream;
    iget-object v9, p0, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    invoke-static {v6}, Lcom/vkontakte/android/Message$FwdMessage;->deserialize(Ljava/io/DataInputStream;)Lcom/vkontakte/android/Message$FwdMessage;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 90
    .end local v3    # "i":I
    .end local v5    # "len":I
    .end local v6    # "s":Ljava/io/DataInputStream;
    .end local v7    # "sdata":[B
    :catch_0
    move-exception v8

    .local v8, "x":Ljava/lang/Exception;
    const-string v9, "vk"

    invoke-static {v9, v8}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/vkontakte/android/Message;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/vkontakte/android/Message;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/vkontakte/android/Message;)V
    .locals 2
    .param p1, "m"    # Lcom/vkontakte/android/Message;

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v1, p0, Lcom/vkontakte/android/Message;->out:Z

    .line 42
    iput-boolean v1, p0, Lcom/vkontakte/android/Message;->sendFailed:Z

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    .line 44
    iput-boolean v1, p0, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    .line 45
    iput-boolean v1, p0, Lcom/vkontakte/android/Message;->readState:Z

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    .line 94
    iget-object v0, p1, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vkontakte/android/Message;->setText(Ljava/lang/String;)V

    .line 95
    iget-object v0, p1, Lcom/vkontakte/android/Message;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkontakte/android/Message;->title:Ljava/lang/String;

    .line 96
    iget-boolean v0, p1, Lcom/vkontakte/android/Message;->out:Z

    iput-boolean v0, p0, Lcom/vkontakte/android/Message;->out:Z

    .line 97
    iget-boolean v0, p1, Lcom/vkontakte/android/Message;->sendFailed:Z

    iput-boolean v0, p0, Lcom/vkontakte/android/Message;->sendFailed:Z

    .line 98
    iget-boolean v0, p1, Lcom/vkontakte/android/Message;->readState:Z

    iput-boolean v0, p0, Lcom/vkontakte/android/Message;->readState:Z

    .line 99
    iget-boolean v0, p1, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    iput-boolean v0, p0, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    .line 100
    iget v0, p1, Lcom/vkontakte/android/Message;->time:I

    iput v0, p0, Lcom/vkontakte/android/Message;->time:I

    .line 101
    iget v0, p1, Lcom/vkontakte/android/Message;->id:I

    iput v0, p0, Lcom/vkontakte/android/Message;->id:I

    .line 102
    iget v0, p1, Lcom/vkontakte/android/Message;->sender:I

    iput v0, p0, Lcom/vkontakte/android/Message;->sender:I

    .line 103
    iget v0, p1, Lcom/vkontakte/android/Message;->peer:I

    iput v0, p0, Lcom/vkontakte/android/Message;->peer:I

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    .line 105
    iget-object v0, p0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    .line 107
    iget-object v0, p0, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 108
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "obj"    # Lorg/json/JSONObject;

    .prologue
    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/vkontakte/android/Message;-><init>(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 10
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
    .local p2, "users":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local p3, "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const v9, 0x77359400

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v6, p0, Lcom/vkontakte/android/Message;->out:Z

    .line 42
    iput-boolean v6, p0, Lcom/vkontakte/android/Message;->sendFailed:Z

    .line 43
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    .line 44
    iput-boolean v6, p0, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    .line 45
    iput-boolean v6, p0, Lcom/vkontakte/android/Message;->readState:Z

    .line 46
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    .line 116
    :try_start_0
    const-string v7, "id"

    const-string v8, "mid"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p1, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/vkontakte/android/Message;->id:I

    .line 117
    const-string v7, "from_id"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 118
    const-string v7, "from_id"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/vkontakte/android/Message;->sender:I

    .line 119
    const-string v7, "chat_id"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "chat_id"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v7, v9

    :goto_0
    iput v7, p0, Lcom/vkontakte/android/Message;->peer:I

    .line 127
    :goto_1
    const-string v7, "body"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/vkontakte/android/Message;->setText(Ljava/lang/String;)V

    .line 128
    const-string v7, "date"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/vkontakte/android/Message;->time:I

    .line 129
    const-string v7, "title"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/vkontakte/android/Message;->title:Ljava/lang/String;

    .line 130
    const-string v7, "out"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v5, :cond_b

    move v7, v5

    :goto_2
    iput-boolean v7, p0, Lcom/vkontakte/android/Message;->out:Z

    .line 131
    const-string v7, "read_state"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v5, :cond_c

    :goto_3
    iput-boolean v5, p0, Lcom/vkontakte/android/Message;->readState:Z

    .line 132
    const-string v5, "action"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 133
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    .line 134
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "%act:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "action"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/vkontakte/android/Message;->setText(Ljava/lang/String;)V

    .line 136
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    .line 137
    const-string v5, "attachments"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 138
    const-string v5, "attachments"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 139
    .local v1, "atts":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v3, v5, :cond_d

    .line 145
    .end local v1    # "atts":Lorg/json/JSONArray;
    .end local v3    # "i":I
    :cond_1
    iget-object v5, p0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/vkontakte/android/Attachment;->sort(Ljava/util/ArrayList;)V

    .line 146
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    .line 147
    const-string v5, "fwd_messages"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 148
    const-string v5, "fwd_messages"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 149
    .local v2, "fwds":Lorg/json/JSONArray;
    iget-object v5, p0, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    invoke-direct {p0, v2, p2, p3}, Lcom/vkontakte/android/Message;->parseFwdMessages(Lorg/json/JSONArray;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 151
    .end local v2    # "fwds":Lorg/json/JSONArray;
    :cond_2
    const-string v5, "geo"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 152
    iget-object v5, p0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    const-string v6, "geo"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/vkontakte/android/Attachment;->parseGeo(Lorg/json/JSONObject;)Lcom/vkontakte/android/GeoAttachment;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_3
    :goto_5
    return-void

    .line 119
    :cond_4
    const-string v7, "user_id"

    const-string v8, "from_id"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p1, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    goto/16 :goto_0

    .line 120
    :cond_5
    const-string v7, "uid"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 121
    const-string v7, "out"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v5, :cond_6

    sget v7, Lcom/vkontakte/android/Global;->uid:I

    :goto_6
    iput v7, p0, Lcom/vkontakte/android/Message;->sender:I

    .line 122
    const-string v7, "chat_id"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, "chat_id"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v7, v9

    :goto_7
    iput v7, p0, Lcom/vkontakte/android/Message;->peer:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 154
    :catch_0
    move-exception v4

    .local v4, "x":Ljava/lang/Exception;
    const-string v5, "vk"

    const-string v6, "error parsing message"

    invoke-static {v5, v6, v4}, Lcom/vkontakte/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 121
    .end local v4    # "x":Ljava/lang/Exception;
    :cond_6
    :try_start_1
    const-string v7, "uid"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_6

    .line 122
    :cond_7
    const-string v7, "uid"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_7

    .line 124
    :cond_8
    const-string v7, "out"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v5, :cond_9

    sget v7, Lcom/vkontakte/android/Global;->uid:I

    :goto_8
    iput v7, p0, Lcom/vkontakte/android/Message;->sender:I

    .line 125
    const-string v7, "chat_id"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    const-string v7, "chat_id"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v7, v9

    :goto_9
    iput v7, p0, Lcom/vkontakte/android/Message;->peer:I

    goto/16 :goto_1

    .line 124
    :cond_9
    const-string v7, "user_id"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_8

    .line 125
    :cond_a
    const-string v7, "user_id"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_9

    :cond_b
    move v7, v6

    .line 130
    goto/16 :goto_2

    :cond_c
    move v5, v6

    .line 131
    goto/16 :goto_3

    .line 140
    .restart local v1    # "atts":Lorg/json/JSONArray;
    .restart local v3    # "i":I
    :cond_d
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/vkontakte/android/Attachment;->parse(Lorg/json/JSONObject;I)Lcom/vkontakte/android/Attachment;

    move-result-object v0

    .line 141
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    if-eqz v0, :cond_e

    .line 142
    iget-object v5, p0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 139
    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4
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
    .line 272
    .local p2, "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .local p3, "photos":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 273
    .local v6, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/Message$FwdMessage;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lt v2, v7, :cond_0

    .line 297
    return-object v6

    .line 274
    :cond_0
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 275
    .local v4, "jm":Lorg/json/JSONObject;
    new-instance v5, Lcom/vkontakte/android/Message$FwdMessage;

    invoke-direct {v5}, Lcom/vkontakte/android/Message$FwdMessage;-><init>()V

    .line 276
    .local v5, "m":Lcom/vkontakte/android/Message$FwdMessage;
    const-string v7, "user_id"

    const-string v8, "uid"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v5, Lcom/vkontakte/android/Message$FwdMessage;->sender:I

    .line 277
    const-string v7, "date"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v5, Lcom/vkontakte/android/Message$FwdMessage;->time:I

    .line 278
    const-string v7, "body"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/vkontakte/android/Message$FwdMessage;->setText(Ljava/lang/String;)V

    .line 279
    iget v7, v5, Lcom/vkontakte/android/Message$FwdMessage;->sender:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget v7, v5, Lcom/vkontakte/android/Message$FwdMessage;->sender:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    :goto_1
    iput-object v7, v5, Lcom/vkontakte/android/Message$FwdMessage;->username:Ljava/lang/String;

    .line 280
    iget v7, v5, Lcom/vkontakte/android/Message$FwdMessage;->sender:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget v7, v5, Lcom/vkontakte/android/Message$FwdMessage;->sender:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    :goto_2
    iput-object v7, v5, Lcom/vkontakte/android/Message$FwdMessage;->userphoto:Ljava/lang/String;

    .line 281
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v5, Lcom/vkontakte/android/Message$FwdMessage;->attachments:Ljava/util/ArrayList;

    .line 282
    const-string v7, "attachments"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 283
    const-string v7, "attachments"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 284
    .local v1, "atts":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lt v3, v7, :cond_5

    .line 290
    .end local v1    # "atts":Lorg/json/JSONArray;
    .end local v3    # "j":I
    :cond_1
    iget-object v7, v5, Lcom/vkontakte/android/Message$FwdMessage;->attachments:Ljava/util/ArrayList;

    invoke-static {v7}, Lcom/vkontakte/android/Attachment;->sort(Ljava/util/ArrayList;)V

    .line 291
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v5, Lcom/vkontakte/android/Message$FwdMessage;->fwdMessages:Ljava/util/ArrayList;

    .line 292
    const-string v7, "fwd_messages"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 293
    iget-object v7, v5, Lcom/vkontakte/android/Message$FwdMessage;->fwdMessages:Ljava/util/ArrayList;

    const-string v8, "fwd_messages"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-direct {p0, v8, p2, p3}, Lcom/vkontakte/android/Message;->parseFwdMessages(Lorg/json/JSONArray;Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 295
    :cond_2
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 279
    :cond_3
    const-string v7, "DELETED"

    goto :goto_1

    .line 280
    :cond_4
    const-string v7, "http://vk.com/images/camera_c.gif"

    goto :goto_2

    .line 285
    .restart local v1    # "atts":Lorg/json/JSONArray;
    .restart local v3    # "j":I
    :cond_5
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/vkontakte/android/Attachment;->parse(Lorg/json/JSONObject;I)Lcom/vkontakte/android/Attachment;

    move-result-object v0

    .line 286
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    if-eqz v0, :cond_6

    .line 287
    iget-object v7, v5, Lcom/vkontakte/android/Message$FwdMessage;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public forward()Lcom/vkontakte/android/Message$FwdMessage;
    .locals 3

    .prologue
    .line 257
    new-instance v0, Lcom/vkontakte/android/Message$FwdMessage;

    invoke-direct {v0}, Lcom/vkontakte/android/Message$FwdMessage;-><init>()V

    .line 258
    .local v0, "f":Lcom/vkontakte/android/Message$FwdMessage;
    iget v1, p0, Lcom/vkontakte/android/Message;->sender:I

    iput v1, v0, Lcom/vkontakte/android/Message$FwdMessage;->sender:I

    .line 259
    iget v1, p0, Lcom/vkontakte/android/Message;->time:I

    iput v1, v0, Lcom/vkontakte/android/Message$FwdMessage;->time:I

    .line 260
    iget-object v1, p0, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkontakte/android/Message$FwdMessage;->text:Ljava/lang/String;

    .line 261
    iget-object v1, p0, Lcom/vkontakte/android/Message;->displayableText:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/vkontakte/android/Message$FwdMessage;->displayableText:Ljava/lang/CharSequence;

    .line 262
    iget v1, p0, Lcom/vkontakte/android/Message;->id:I

    iput v1, v0, Lcom/vkontakte/android/Message$FwdMessage;->id:I

    .line 263
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/vkontakte/android/Message$FwdMessage;->attachments:Ljava/util/ArrayList;

    .line 265
    iget-object v1, v0, Lcom/vkontakte/android/Message$FwdMessage;->attachments:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 266
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/vkontakte/android/Message$FwdMessage;->fwdMessages:Ljava/util/ArrayList;

    .line 267
    iget-object v1, v0, Lcom/vkontakte/android/Message$FwdMessage;->fwdMessages:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 268
    return-object v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/String;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    .line 192
    invoke-static {p1}, Lcom/vkontakte/android/Global;->replaceMentions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, "<br/>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-static {v0}, Lcom/vkontakte/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0}, Lcom/vkontakte/android/NewsEntry;->stripUnderlines(Landroid/text/Spannable;)Landroid/text/Spannable;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/Message;->displayableText:Ljava/lang/CharSequence;

    .line 193
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vkontakte/android/Message;->id:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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
    .locals 9
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 200
    iget-object v6, p0, Lcom/vkontakte/android/Message;->params:Ljava/util/HashMap;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 201
    iget-object v6, p0, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    iget-object v6, p0, Lcom/vkontakte/android/Message;->title:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    iget-boolean v6, p0, Lcom/vkontakte/android/Message;->out:Z

    if-eqz v6, :cond_2

    move v6, v7

    :goto_0
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    iget-boolean v6, p0, Lcom/vkontakte/android/Message;->sendFailed:Z

    if-eqz v6, :cond_3

    move v6, v7

    :goto_1
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    iget-boolean v6, p0, Lcom/vkontakte/android/Message;->readState:Z

    if-eqz v6, :cond_4

    move v6, v7

    :goto_2
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    iget-boolean v6, p0, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    if-eqz v6, :cond_5

    :goto_3
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    iget v6, p0, Lcom/vkontakte/android/Message;->time:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget v6, p0, Lcom/vkontakte/android/Message;->id:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    iget v6, p0, Lcom/vkontakte/android/Message;->sender:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    iget v6, p0, Lcom/vkontakte/android/Message;->peer:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    iget-object v6, p0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    if-nez v6, :cond_6

    move v6, v8

    :goto_4
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    iget-object v6, p0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    .line 214
    iget-object v6, p0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_7

    .line 224
    :cond_0
    iget-object v6, p0, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    if-nez v6, :cond_8

    :goto_6
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    iget-object v6, p0, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    .line 228
    :try_start_0
    iget-object v6, p0, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    if-nez v7, :cond_9

    .line 239
    :cond_1
    :goto_8
    return-void

    :cond_2
    move v6, v8

    .line 203
    goto :goto_0

    :cond_3
    move v6, v8

    .line 204
    goto :goto_1

    :cond_4
    move v6, v8

    .line 205
    goto :goto_2

    :cond_5
    move v7, v8

    .line 206
    goto :goto_3

    .line 212
    :cond_6
    iget-object v6, p0, Lcom/vkontakte/android/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    goto :goto_4

    .line 214
    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/Attachment;

    .line 216
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    :try_start_1
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 217
    .local v5, "os":Ljava/io/ByteArrayOutputStream;
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, v7}, Lcom/vkontakte/android/Attachment;->serialize(Ljava/io/DataOutputStream;)V

    .line 218
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 219
    .local v1, "b":[B
    array-length v7, v1

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 221
    .end local v1    # "b":[B
    .end local v5    # "os":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v7

    goto :goto_5

    .line 224
    .end local v0    # "att":Lcom/vkontakte/android/Attachment;
    :cond_8
    iget-object v6, p0, Lcom/vkontakte/android/Message;->fwdMessages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    goto :goto_6

    .line 228
    :cond_9
    :try_start_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/Message$FwdMessage;

    .line 229
    .local v4, "m":Lcom/vkontakte/android/Message$FwdMessage;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 230
    .local v3, "buf":Ljava/io/ByteArrayOutputStream;
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-direct {v5, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 231
    .local v5, "os":Ljava/io/DataOutputStream;
    invoke-virtual {v4, v5}, Lcom/vkontakte/android/Message$FwdMessage;->serialize(Ljava/io/DataOutputStream;)V

    .line 232
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 233
    .local v2, "bb":[B
    array-length v7, v2

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    .line 236
    .end local v2    # "bb":[B
    .end local v3    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "m":Lcom/vkontakte/android/Message$FwdMessage;
    .end local v5    # "os":Ljava/io/DataOutputStream;
    :catch_1
    move-exception v6

    goto :goto_8
.end method
