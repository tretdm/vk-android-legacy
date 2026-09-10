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


# instance fields
.field public attachCount:[I

.field public attachments:[Lcom/vkontakte/android/Attachment;

.field public displayableText:Ljava/lang/CharSequence;

.field public docNames:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public docThumbs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public fwdMessages:[Lcom/vkontakte/android/Message$FwdMessage;

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

.field public photoURLs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public readState:Z

.field public selected:Z

.field public sendFailed:Z

.field public sender:I

.field public text:Ljava/lang/String;

.field public time:I

.field public videoThumbs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lcom/vkontakte/android/Message$1;

    invoke-direct {v0}, Lcom/vkontakte/android/Message$1;-><init>()V

    .line 136
    sput-object v0, Lcom/vkontakte/android/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 145
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v0, p0, Lcom/vkontakte/android/Message;->out:Z

    .line 32
    iput-boolean v0, p0, Lcom/vkontakte/android/Message;->sendFailed:Z

    .line 34
    iput-boolean v0, p0, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    .line 35
    iput-boolean v0, p0, Lcom/vkontakte/android/Message;->readState:Z

    .line 36
    const/4 v0, 0x7

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/vkontakte/android/Message;->attachCount:[I

    .line 37
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/Message;->photoURLs:Ljava/util/Vector;

    .line 38
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/Message;->docThumbs:Ljava/util/Vector;

    .line 39
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/Message;->docNames:Ljava/util/Vector;

    .line 40
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/Message;->videoThumbs:Ljava/util/Vector;

    .line 45
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 10
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean v8, p0, Lcom/vkontakte/android/Message;->out:Z

    .line 32
    iput-boolean v8, p0, Lcom/vkontakte/android/Message;->sendFailed:Z

    .line 34
    iput-boolean v8, p0, Lcom/vkontakte/android/Message;->isServiceMessage:Z

    .line 35
    iput-boolean v8, p0, Lcom/vkontakte/android/Message;->readState:Z

    .line 36
    const/4 v9, 0x7

    new-array v9, v9, [I

    iput-object v9, p0, Lcom/vkontakte/android/Message;->attachCount:[I

    .line 37
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    iput-object v9, p0, Lcom/vkontakte/android/Message;->photoURLs:Ljava/util/Vector;

    .line 38
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    iput-object v9, p0, Lcom/vkontakte/android/Message;->docThumbs:Ljava/util/Vector;

    .line 39
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    iput-object v9, p0, Lcom/vkontakte/android/Message;->docNames:Ljava/util/Vector;

    .line 40
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    iput-object v9, p0, Lcom/vkontakte/android/Message;->videoThumbs:Ljava/util/Vector;

    .line 49
    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {p1, v9}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v9

    iput-object v9, p0, Lcom/vkontakte/android/Message;->params:Ljava/util/HashMap;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/vkontakte/android/Message;->setText(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-ne v9, v7, :cond_0

    move v9, v7

    :goto_0
    iput-boolean v9, p0, Lcom/vkontakte/android/Message;->out:Z

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-ne v9, v7, :cond_1

    move v9, v7

    :goto_1
    iput-boolean v9, p0, Lcom/vkontakte/android/Message;->sendFailed:Z

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-ne v9, v7, :cond_2

    :goto_2
    iput-boolean v7, p0, Lcom/vkontakte/android/Message;->readState:Z

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Lcom/vkontakte/android/Message;->time:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Lcom/vkontakte/android/Message;->id:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Lcom/vkontakte/android/Message;->sender:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 59
    .local v6, "npu":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-lt v3, v6, :cond_3

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 62
    const/4 v3, 0x0

    :goto_4
    if-lt v3, v6, :cond_4

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 65
    const/4 v3, 0x0

    :goto_5
    if-lt v3, v6, :cond_5

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 68
    const/4 v3, 0x0

    :goto_6
    if-lt v3, v6, :cond_6

    .line 70
    iget-object v7, p0, Lcom/vkontakte/android/Message;->attachCount:[I

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readIntArray([I)V

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 72
    .local v5, "len":I
    const-string v7, "vk"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "attach count "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-array v7, v5, [Lcom/vkontakte/android/Attachment;

    iput-object v7, p0, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    .line 74
    const/4 v3, 0x0

    :goto_7
    if-lt v3, v5, :cond_7

    .line 87
    .end local v3    # "i":I
    .end local v5    # "len":I
    .end local v6    # "npu":I
    :goto_8
    return-void

    :cond_0
    move v9, v8

    .line 51
    goto :goto_0

    :cond_1
    move v9, v8

    .line 52
    goto :goto_1

    :cond_2
    move v7, v8

    .line 53
    goto :goto_2

    .line 59
    .restart local v3    # "i":I
    .restart local v6    # "npu":I
    :cond_3
    iget-object v7, p0, Lcom/vkontakte/android/Message;->photoURLs:Ljava/util/Vector;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 62
    :cond_4
    iget-object v7, p0, Lcom/vkontakte/android/Message;->docThumbs:Ljava/util/Vector;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 65
    :cond_5
    iget-object v7, p0, Lcom/vkontakte/android/Message;->docNames:Ljava/util/Vector;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 68
    :cond_6
    iget-object v7, p0, Lcom/vkontakte/android/Message;->videoThumbs:Ljava/util/Vector;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 75
    .restart local v5    # "len":I
    :cond_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 76
    .local v1, "bl":I
    const-string v7, "vk"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "attach "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " len "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vkontakte/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-array v2, v1, [B

    .line 78
    .local v2, "buf":[B
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 79
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 80
    .local v0, "ais":Ljava/io/ByteArrayInputStream;
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 81
    .local v4, "is":Ljava/io/DataInputStream;
    iget-object v7, p0, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    invoke-static {v4, v8}, Lcom/vkontakte/android/Attachment;->deserialize(Ljava/io/DataInputStream;I)Lcom/vkontakte/android/Attachment;

    move-result-object v8

    aput-object v8, v7, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 86
    .end local v0    # "ais":Ljava/io/ByteArrayInputStream;
    .end local v1    # "bl":I
    .end local v2    # "buf":[B
    .end local v3    # "i":I
    .end local v4    # "is":Ljava/io/DataInputStream;
    .end local v5    # "len":I
    .end local v6    # "npu":I
    :catch_0
    move-exception v7

    goto :goto_8
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/vkontakte/android/Message;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/vkontakte/android/Message;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public forward()Lcom/vkontakte/android/Message$FwdMessage;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 152
    new-instance v0, Lcom/vkontakte/android/Message$FwdMessage;

    invoke-direct {v0}, Lcom/vkontakte/android/Message$FwdMessage;-><init>()V

    .line 153
    .local v0, "f":Lcom/vkontakte/android/Message$FwdMessage;
    iget v1, p0, Lcom/vkontakte/android/Message;->sender:I

    iput v1, v0, Lcom/vkontakte/android/Message$FwdMessage;->sender:I

    .line 154
    iget v1, p0, Lcom/vkontakte/android/Message;->time:I

    iput v1, v0, Lcom/vkontakte/android/Message$FwdMessage;->time:I

    .line 155
    iget-object v1, p0, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkontakte/android/Message$FwdMessage;->text:Ljava/lang/String;

    .line 156
    iget-object v1, p0, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    array-length v1, v1

    new-array v1, v1, [Lcom/vkontakte/android/Attachment;

    iput-object v1, v0, Lcom/vkontakte/android/Message$FwdMessage;->attachments:[Lcom/vkontakte/android/Attachment;

    .line 157
    iget-object v1, p0, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    iget-object v2, v0, Lcom/vkontakte/android/Message$FwdMessage;->attachments:[Lcom/vkontakte/android/Attachment;

    iget-object v3, p0, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    return-object v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    .line 91
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

    .line 92
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
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

    iget-object v1, p0, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    array-length v0, v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 8
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 99
    iget-object v4, p0, Lcom/vkontakte/android/Message;->params:Ljava/util/HashMap;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 100
    iget-object v4, p0, Lcom/vkontakte/android/Message;->text:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-boolean v4, p0, Lcom/vkontakte/android/Message;->out:Z

    if-eqz v4, :cond_1

    move v4, v5

    :goto_0
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget-boolean v4, p0, Lcom/vkontakte/android/Message;->sendFailed:Z

    if-eqz v4, :cond_2

    move v4, v5

    :goto_1
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget-boolean v4, p0, Lcom/vkontakte/android/Message;->readState:Z

    if-eqz v4, :cond_3

    :goto_2
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget v4, p0, Lcom/vkontakte/android/Message;->time:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    iget v4, p0, Lcom/vkontakte/android/Message;->id:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget v4, p0, Lcom/vkontakte/android/Message;->sender:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-object v4, p0, Lcom/vkontakte/android/Message;->photoURLs:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-object v4, p0, Lcom/vkontakte/android/Message;->photoURLs:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    .line 111
    iget-object v4, p0, Lcom/vkontakte/android/Message;->docThumbs:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget-object v4, p0, Lcom/vkontakte/android/Message;->docThumbs:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5

    .line 114
    iget-object v4, p0, Lcom/vkontakte/android/Message;->docNames:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget-object v4, p0, Lcom/vkontakte/android/Message;->docNames:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_6

    .line 117
    iget-object v4, p0, Lcom/vkontakte/android/Message;->videoThumbs:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-object v4, p0, Lcom/vkontakte/android/Message;->videoThumbs:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_7

    .line 120
    iget-object v4, p0, Lcom/vkontakte/android/Message;->attachCount:[I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 121
    iget-object v4, p0, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    if-nez v4, :cond_8

    move v4, v6

    :goto_7
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget-object v4, p0, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    if-eqz v4, :cond_0

    .line 123
    iget-object v4, p0, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    array-length v5, v4

    :goto_8
    if-lt v6, v5, :cond_9

    .line 134
    :cond_0
    return-void

    :cond_1
    move v4, v6

    .line 101
    goto/16 :goto_0

    :cond_2
    move v4, v6

    .line 102
    goto/16 :goto_1

    :cond_3
    move v5, v6

    .line 103
    goto/16 :goto_2

    .line 109
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, "s":Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_3

    .line 112
    .end local v3    # "s":Ljava/lang/String;
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .restart local v3    # "s":Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_4

    .line 115
    .end local v3    # "s":Ljava/lang/String;
    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .restart local v3    # "s":Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_5

    .line 118
    .end local v3    # "s":Ljava/lang/String;
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .restart local v3    # "s":Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_6

    .line 121
    .end local v3    # "s":Ljava/lang/String;
    :cond_8
    iget-object v4, p0, Lcom/vkontakte/android/Message;->attachments:[Lcom/vkontakte/android/Attachment;

    array-length v4, v4

    goto :goto_7

    .line 123
    :cond_9
    aget-object v0, v4, v6

    .line 125
    .local v0, "att":Lcom/vkontakte/android/Attachment;
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 126
    .local v2, "os":Ljava/io/ByteArrayOutputStream;
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, v7}, Lcom/vkontakte/android/Attachment;->serialize(Ljava/io/DataOutputStream;)V

    .line 127
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 128
    .local v1, "b":[B
    array-length v7, v1

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v1    # "b":[B
    .end local v2    # "os":Ljava/io/ByteArrayOutputStream;
    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 130
    :catch_0
    move-exception v7

    goto :goto_9
.end method
