.class public Lcom/vkontakte/android/PhotoAttachment;
.super Lcom/vkontakte/android/Attachment;
.source "PhotoAttachment.java"

# interfaces
.implements Lcom/vkontakte/android/ThumbAttachment;
.implements Lcom/vkontakte/android/ImageAttachment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/PhotoAttachment$Image;,
        Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vkontakte/android/PhotoAttachment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public accessKey:Ljava/lang/String;

.field public aid:I

.field public breakAfter:Z

.field public date:I

.field public descr:Ljava/lang/String;

.field public displayH:I

.field public displayW:I

.field public floating:Z

.field public hasSize:Z

.field public images:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/vkontakte/android/PhotoAttachment$Image;",
            ">;"
        }
    .end annotation
.end field

.field public oid:I

.field public paddingAfter:Z

.field public photosMode:Z

.field public pid:I

.field public postID:I

.field public ratio:F

.field public srcBig:Ljava/lang/String;

.field public srcThumb:Ljava/lang/String;

.field public thumbType:Ljava/lang/String;

.field public uid:I

.field useSmall:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 123
    new-instance v0, Lcom/vkontakte/android/PhotoAttachment$1;

    invoke-direct {v0}, Lcom/vkontakte/android/PhotoAttachment$1;-><init>()V

    sput-object v0, Lcom/vkontakte/android/PhotoAttachment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/vkontakte/android/Photo;)V
    .locals 6
    .param p1, "photo"    # Lcom/vkontakte/android/Photo;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/vkontakte/android/Attachment;-><init>()V

    .line 34
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    .line 36
    const-string v3, "m"

    iput-object v3, p0, Lcom/vkontakte/android/PhotoAttachment;->thumbType:Ljava/lang/String;

    .line 42
    sget-object v3, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    invoke-virtual {v3}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v3

    const/16 v4, 0x14

    if-ge v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/vkontakte/android/PhotoAttachment;->useSmall:Z

    .line 91
    iget v3, p1, Lcom/vkontakte/android/Photo;->id:I

    iput v3, p0, Lcom/vkontakte/android/PhotoAttachment;->pid:I

    .line 92
    iget v3, p1, Lcom/vkontakte/android/Photo;->ownerID:I

    iput v3, p0, Lcom/vkontakte/android/PhotoAttachment;->oid:I

    .line 93
    iget v3, p1, Lcom/vkontakte/android/Photo;->albumID:I

    iput v3, p0, Lcom/vkontakte/android/PhotoAttachment;->aid:I

    .line 94
    iget v3, p1, Lcom/vkontakte/android/Photo;->userID:I

    iput v3, p0, Lcom/vkontakte/android/PhotoAttachment;->uid:I

    .line 95
    iget v3, p1, Lcom/vkontakte/android/Photo;->date:I

    iput v3, p0, Lcom/vkontakte/android/PhotoAttachment;->date:I

    .line 96
    iget-object v3, p1, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    iput-object v3, p0, Lcom/vkontakte/android/PhotoAttachment;->descr:Ljava/lang/String;

    .line 97
    iget-object v3, p1, Lcom/vkontakte/android/Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/Photo$Image;

    .line 98
    .local v2, "im":Lcom/vkontakte/android/Photo$Image;
    new-instance v0, Lcom/vkontakte/android/PhotoAttachment$Image;

    invoke-direct {v0}, Lcom/vkontakte/android/PhotoAttachment$Image;-><init>()V

    .line 99
    .local v0, "i":Lcom/vkontakte/android/PhotoAttachment$Image;
    iget v3, v2, Lcom/vkontakte/android/Photo$Image;->height:I

    iput v3, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->height:I

    .line 100
    iget v3, v2, Lcom/vkontakte/android/Photo$Image;->width:I

    iput v3, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->width:I

    .line 101
    iget-object v3, v2, Lcom/vkontakte/android/Photo$Image;->url:Ljava/lang/String;

    iput-object v3, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    .line 102
    iget-char v3, v2, Lcom/vkontakte/android/Photo$Image;->type:C

    iput-char v3, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->type:C

    .line 103
    iget-object v3, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-char v5, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->type:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 42
    .end local v0    # "i":Lcom/vkontakte/android/PhotoAttachment$Image;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "im":Lcom/vkontakte/android/Photo$Image;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 105
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v3, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/PhotoAttachment$Image;

    .line 106
    .local v2, "im":Lcom/vkontakte/android/PhotoAttachment$Image;
    iget v3, v2, Lcom/vkontakte/android/PhotoAttachment$Image;->width:I

    if-lez v3, :cond_2

    iget v3, v2, Lcom/vkontakte/android/PhotoAttachment$Image;->height:I

    if-lez v3, :cond_2

    .line 107
    iget v3, v2, Lcom/vkontakte/android/PhotoAttachment$Image;->width:I

    int-to-float v3, v3

    iget v4, v2, Lcom/vkontakte/android/PhotoAttachment$Image;->height:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/vkontakte/android/PhotoAttachment;->ratio:F

    .line 111
    :goto_2
    iget-object v3, p1, Lcom/vkontakte/android/Photo;->accessKey:Ljava/lang/String;

    iput-object v3, p0, Lcom/vkontakte/android/PhotoAttachment;->accessKey:Ljava/lang/String;

    .line 112
    iget v3, p1, Lcom/vkontakte/android/Photo;->postID:I

    iput v3, p0, Lcom/vkontakte/android/PhotoAttachment;->postID:I

    .line 113
    return-void

    .line 109
    :cond_2
    const/high16 v3, -0x40800000    # -1.0f

    iput v3, p0, Lcom/vkontakte/android/PhotoAttachment;->ratio:F

    goto :goto_2
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 7
    .param p1, "thumb"    # Ljava/lang/String;
    .param p2, "big"    # Ljava/lang/String;
    .param p3, "_oid"    # I
    .param p4, "_pid"    # I
    .param p5, "_aid"    # I

    .prologue
    .line 116
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/vkontakte/android/PhotoAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 10
    .param p1, "thumb"    # Ljava/lang/String;
    .param p2, "big"    # Ljava/lang/String;
    .param p3, "_oid"    # I
    .param p4, "_pid"    # I
    .param p5, "_aid"    # I
    .param p6, "_descr"    # Ljava/lang/String;

    .prologue
    .line 120
    const/4 v0, 0x2

    new-array v1, v0, [Lcom/vkontakte/android/PhotoAttachment$Image;

    const/4 v0, 0x0

    new-instance v2, Lcom/vkontakte/android/PhotoAttachment$Image;

    const/16 v3, 0x6d

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, p1, v4, v5}, Lcom/vkontakte/android/PhotoAttachment$Image;-><init>(CLjava/lang/String;II)V

    aput-object v2, v1, v0

    const/4 v0, 0x1

    new-instance v2, Lcom/vkontakte/android/PhotoAttachment$Image;

    const/16 v3, 0x78

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, p2, v4, v5}, Lcom/vkontakte/android/PhotoAttachment$Image;-><init>(CLjava/lang/String;II)V

    aput-object v2, v1, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, ""

    const/4 v9, 0x0

    move-object v0, p0

    move v2, p3

    move v3, p4

    move v4, p5

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v9}, Lcom/vkontakte/android/PhotoAttachment;-><init>([Lcom/vkontakte/android/PhotoAttachment$Image;IIILjava/lang/String;IILjava/lang/String;I)V

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;IIILjava/lang/String;)V
    .locals 4
    .param p2, "_oid"    # I
    .param p3, "_pid"    # I
    .param p4, "_aid"    # I
    .param p5, "_descr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/vkontakte/android/PhotoAttachment$Image;",
            ">;III",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "_images":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/vkontakte/android/PhotoAttachment$Image;>;"
    invoke-direct {p0}, Lcom/vkontakte/android/Attachment;-><init>()V

    .line 34
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    .line 36
    const-string v1, "m"

    iput-object v1, p0, Lcom/vkontakte/android/PhotoAttachment;->thumbType:Ljava/lang/String;

    .line 42
    sget-object v1, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v1

    const/16 v2, 0x14

    if-ge v1, v2, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/vkontakte/android/PhotoAttachment;->useSmall:Z

    .line 72
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 73
    iput p3, p0, Lcom/vkontakte/android/PhotoAttachment;->pid:I

    .line 74
    iput p2, p0, Lcom/vkontakte/android/PhotoAttachment;->oid:I

    .line 75
    iput p4, p0, Lcom/vkontakte/android/PhotoAttachment;->aid:I

    .line 76
    iput-object p5, p0, Lcom/vkontakte/android/PhotoAttachment;->descr:Ljava/lang/String;

    .line 78
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/PhotoAttachment$Image;

    .line 79
    .local v0, "im":Lcom/vkontakte/android/PhotoAttachment$Image;
    iget v1, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->width:I

    if-lez v1, :cond_3

    iget v1, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->height:I

    if-lez v1, :cond_3

    .line 80
    iget v1, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->width:I

    int-to-float v1, v1

    iget v2, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->height:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/vkontakte/android/PhotoAttachment;->ratio:F

    .line 85
    :goto_1
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    sget v1, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_0

    sget-boolean v1, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v1, :cond_4

    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v3, "y"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "y"

    :goto_2
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget-object v1, v1, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    iput-object v1, p0, Lcom/vkontakte/android/PhotoAttachment;->srcBig:Ljava/lang/String;

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v2, "m"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget-object v1, v1, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    iput-object v1, p0, Lcom/vkontakte/android/PhotoAttachment;->srcThumb:Ljava/lang/String;

    .line 88
    return-void

    .line 42
    .end local v0    # "im":Lcom/vkontakte/android/PhotoAttachment$Image;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 82
    .restart local v0    # "im":Lcom/vkontakte/android/PhotoAttachment$Image;
    :cond_3
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/vkontakte/android/PhotoAttachment;->ratio:F

    goto :goto_1

    .line 86
    :cond_4
    const-string v1, "x"

    goto :goto_2
.end method

.method public constructor <init>([Lcom/vkontakte/android/PhotoAttachment$Image;IIILjava/lang/String;IILjava/lang/String;I)V
    .locals 9
    .param p1, "_images"    # [Lcom/vkontakte/android/PhotoAttachment$Image;
    .param p2, "_oid"    # I
    .param p3, "_pid"    # I
    .param p4, "_aid"    # I
    .param p5, "_descr"    # Ljava/lang/String;
    .param p6, "_uid"    # I
    .param p7, "_date"    # I
    .param p8, "akey"    # Ljava/lang/String;
    .param p9, "post"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/vkontakte/android/Attachment;-><init>()V

    .line 34
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    .line 36
    const-string v6, "m"

    iput-object v6, p0, Lcom/vkontakte/android/PhotoAttachment;->thumbType:Ljava/lang/String;

    .line 42
    sget-object v6, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    invoke-virtual {v6}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v6

    const/16 v7, 0x14

    if-ge v6, v7, :cond_1

    const/4 v6, 0x1

    :goto_0
    iput-boolean v6, p0, Lcom/vkontakte/android/PhotoAttachment;->useSmall:Z

    .line 45
    move-object v1, p1

    .local v1, "arr$":[Lcom/vkontakte/android/PhotoAttachment$Image;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v5, :cond_2

    aget-object v4, v1, v2

    .local v4, "img":Lcom/vkontakte/android/PhotoAttachment$Image;
    iget-object v6, v4, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-char v8, v4, Lcom/vkontakte/android/PhotoAttachment$Image;->type:C

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 42
    .end local v1    # "arr$":[Lcom/vkontakte/android/PhotoAttachment$Image;
    .end local v2    # "i$":I
    .end local v4    # "img":Lcom/vkontakte/android/PhotoAttachment$Image;
    .end local v5    # "len$":I
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 46
    .restart local v1    # "arr$":[Lcom/vkontakte/android/PhotoAttachment$Image;
    .restart local v2    # "i$":I
    .restart local v5    # "len$":I
    :cond_2
    iput p3, p0, Lcom/vkontakte/android/PhotoAttachment;->pid:I

    .line 47
    iput p2, p0, Lcom/vkontakte/android/PhotoAttachment;->oid:I

    .line 48
    iput p4, p0, Lcom/vkontakte/android/PhotoAttachment;->aid:I

    .line 49
    iput-object p5, p0, Lcom/vkontakte/android/PhotoAttachment;->descr:Ljava/lang/String;

    .line 50
    iput p6, p0, Lcom/vkontakte/android/PhotoAttachment;->uid:I

    .line 51
    move/from16 v0, p7

    iput v0, p0, Lcom/vkontakte/android/PhotoAttachment;->date:I

    .line 52
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/vkontakte/android/PhotoAttachment;->accessKey:Ljava/lang/String;

    .line 53
    move/from16 v0, p9

    iput v0, p0, Lcom/vkontakte/android/PhotoAttachment;->postID:I

    .line 55
    iget-object v6, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkontakte/android/PhotoAttachment$Image;

    .line 56
    .local v3, "im":Lcom/vkontakte/android/PhotoAttachment$Image;
    iget v6, v3, Lcom/vkontakte/android/PhotoAttachment$Image;->width:I

    if-lez v6, :cond_4

    iget v6, v3, Lcom/vkontakte/android/PhotoAttachment$Image;->height:I

    if-lez v6, :cond_4

    .line 57
    iget v6, v3, Lcom/vkontakte/android/PhotoAttachment$Image;->width:I

    int-to-float v6, v6

    iget v7, v3, Lcom/vkontakte/android/PhotoAttachment$Image;->height:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, Lcom/vkontakte/android/PhotoAttachment;->ratio:F

    .line 62
    :goto_2
    iget-object v6, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 63
    iget-object v7, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    sget v6, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v8

    if-gtz v6, :cond_3

    sget-boolean v6, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v6, :cond_5

    :cond_3
    iget-object v6, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v8, "y"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "y"

    :goto_3
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget-object v6, v6, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    iput-object v6, p0, Lcom/vkontakte/android/PhotoAttachment;->srcBig:Ljava/lang/String;

    .line 68
    :goto_4
    iget-object v6, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v7, "m"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v7, "m"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget-object v6, v6, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    :goto_5
    iput-object v6, p0, Lcom/vkontakte/android/PhotoAttachment;->srcThumb:Ljava/lang/String;

    .line 69
    return-void

    .line 59
    :cond_4
    const/high16 v6, -0x40800000    # -1.0f

    iput v6, p0, Lcom/vkontakte/android/PhotoAttachment;->ratio:F

    goto :goto_2

    .line 63
    :cond_5
    const-string v6, "x"

    goto :goto_3

    .line 65
    :cond_6
    const-string v6, "http://vk.com/images/x_null.gif"

    iput-object v6, p0, Lcom/vkontakte/android/PhotoAttachment;->srcBig:Ljava/lang/String;

    goto :goto_4

    .line 68
    :cond_7
    const-string v6, "http://vk.com/images/x_null.gif"

    goto :goto_5
.end method

.method private getThumbType(IILjava/util/HashMap;)Ljava/lang/String;
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/vkontakte/android/PhotoAttachment$Image;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 314
    .local p3, "imgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/vkontakte/android/PhotoAttachment$Image;>;"
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 315
    .local v0, "max_s":I
    const/16 v1, 0x4b

    if-gt v0, v1, :cond_0

    .line 316
    const-string v1, "s"

    .line 328
    :goto_0
    return-object v1

    .line 317
    :cond_0
    const/16 v1, 0x82

    if-ge v0, v1, :cond_1

    .line 318
    const-string v1, "m"

    goto :goto_0

    .line 319
    :cond_1
    const-string v1, "o"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "o"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget v1, v1, Lcom/vkontakte/android/PhotoAttachment$Image;->width:I

    if-lt v1, p1, :cond_2

    const-string v1, "o"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget v1, v1, Lcom/vkontakte/android/PhotoAttachment$Image;->height:I

    if-lt v1, p2, :cond_2

    .line 320
    const-string v1, "o"

    goto :goto_0

    .line 321
    :cond_2
    const-string v1, "p"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "p"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget v1, v1, Lcom/vkontakte/android/PhotoAttachment$Image;->width:I

    if-lt v1, p1, :cond_3

    const-string v1, "p"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget v1, v1, Lcom/vkontakte/android/PhotoAttachment$Image;->height:I

    if-ge v1, p2, :cond_4

    :cond_3
    iget-boolean v1, p0, Lcom/vkontakte/android/PhotoAttachment;->useSmall:Z

    if-eqz v1, :cond_5

    .line 322
    :cond_4
    const-string v1, "p"

    goto :goto_0

    .line 323
    :cond_5
    const-string v1, "q"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "q"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget v1, v1, Lcom/vkontakte/android/PhotoAttachment$Image;->width:I

    if-lt v1, p1, :cond_6

    const-string v1, "q"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget v1, v1, Lcom/vkontakte/android/PhotoAttachment$Image;->height:I

    if-lt v1, p2, :cond_6

    .line 324
    const-string v1, "q"

    goto :goto_0

    .line 325
    :cond_6
    const-string v1, "r"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "r"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget v1, v1, Lcom/vkontakte/android/PhotoAttachment$Image;->width:I

    if-lt v1, p1, :cond_7

    const-string v1, "r"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget v1, v1, Lcom/vkontakte/android/PhotoAttachment$Image;->height:I

    if-lt v1, p2, :cond_7

    .line 326
    const-string v1, "r"

    goto/16 :goto_0

    .line 328
    :cond_7
    const-string v1, "x"

    goto/16 :goto_0
.end method


# virtual methods
.method public clearImage(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 395
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "view":Landroid/view/View;
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-boolean v0, p0, Lcom/vkontakte/android/PhotoAttachment;->photosMode:Z

    if-eqz v0, :cond_0

    const v0, -0xededee

    :goto_0
    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 396
    return-void

    .line 395
    :cond_0
    const v0, -0xd0d0e

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public getFullView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 168
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vkontakte/android/PhotoAttachment;->getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Lcom/vkontakte/android/PhotoAttachment;->displayH:I

    return v0
.end method

.method public getImageURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoAttachment;->getThumbURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRatio()F
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lcom/vkontakte/android/PhotoAttachment;->ratio:F

    return v0
.end method

.method public getThumbURL()Ljava/lang/String;
    .locals 4

    .prologue
    .line 360
    :try_start_0
    invoke-static {}, Lcom/vkontakte/android/NetworkStateReceiver;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/vkontakte/android/PhotoAttachment;->thumbType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget-object v0, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v3, "p"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "p"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget-object v0, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 371
    :goto_1
    return-object v0

    .line 361
    :cond_0
    const-string v0, "m"

    goto :goto_0

    .line 363
    :cond_1
    invoke-static {}, Lcom/vkontakte/android/NetworkStateReceiver;->isHighSpeed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 364
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/vkontakte/android/PhotoAttachment;->thumbType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget-object v0, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    goto :goto_1

    .line 367
    :cond_2
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v1, "p"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 368
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v1, "p"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget-object v0, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    goto :goto_1

    .line 369
    :cond_3
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v1, "m"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget-object v0, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 370
    :catch_0
    move-exception v0

    .line 371
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reuse"    # Landroid/view/View;

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 172
    const-string v2, "photo"

    invoke-static {p1, v2}, Lcom/vkontakte/android/Attachment;->getReusableView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;

    .line 173
    .local v0, "iv":Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;
    const v2, 0x7f0201ba

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->setImageResource(I)V

    .line 174
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->setId(I)V

    .line 175
    iget-boolean v2, p0, Lcom/vkontakte/android/PhotoAttachment;->hasSize:Z

    if-eqz v2, :cond_4

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    :goto_0
    invoke-virtual {v0, v2}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 176
    iget v2, p0, Lcom/vkontakte/android/PhotoAttachment;->displayW:I

    if-nez v2, :cond_0

    const/16 v2, 0x87

    iput v2, p0, Lcom/vkontakte/android/PhotoAttachment;->displayW:I

    .line 177
    :cond_0
    iget v2, p0, Lcom/vkontakte/android/PhotoAttachment;->displayH:I

    if-nez v2, :cond_1

    const/16 v2, 0x64

    iput v2, p0, Lcom/vkontakte/android/PhotoAttachment;->displayH:I

    .line 178
    :cond_1
    iget v2, p0, Lcom/vkontakte/android/PhotoAttachment;->displayH:I

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->setMinimumHeight(I)V

    .line 179
    iget v2, p0, Lcom/vkontakte/android/PhotoAttachment;->displayH:I

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->setMaxHeight(I)V

    .line 180
    iget v2, p0, Lcom/vkontakte/android/PhotoAttachment;->displayW:I

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->setMinimumWidth(I)V

    .line 181
    iget v2, p0, Lcom/vkontakte/android/PhotoAttachment;->displayW:I

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->setMaxWidth(I)V

    .line 182
    iget v2, p0, Lcom/vkontakte/android/PhotoAttachment;->displayW:I

    iput v2, v0, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->displayW:I

    .line 183
    iget v2, p0, Lcom/vkontakte/android/PhotoAttachment;->displayH:I

    iput v2, v0, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->displayH:I

    .line 184
    new-instance v1, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    iget-boolean v2, p0, Lcom/vkontakte/android/PhotoAttachment;->paddingAfter:Z

    if-eqz v2, :cond_5

    const/high16 v2, 0x41200000    # 10.0f

    :goto_1
    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-direct {v1, v4, v2}, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;-><init>(II)V

    .line 185
    .local v1, "params":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    iget-boolean v2, p0, Lcom/vkontakte/android/PhotoAttachment;->breakAfter:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/vkontakte/android/PhotoAttachment;->floating:Z

    if-eqz v2, :cond_3

    .line 186
    :cond_2
    iget-boolean v2, p0, Lcom/vkontakte/android/PhotoAttachment;->breakAfter:Z

    iput-boolean v2, v1, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->breakAfter:Z

    .line 187
    iget-boolean v2, p0, Lcom/vkontakte/android/PhotoAttachment;->floating:Z

    iput-boolean v2, v1, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->floating:Z

    .line 189
    :cond_3
    invoke-virtual {v0, v1}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    return-object v0

    .line 175
    .end local v1    # "params":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    :cond_4
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    :cond_5
    move v2, v3

    .line 184
    goto :goto_1
.end method

.method public getViewLayoutParams()Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    .locals 4

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 196
    new-instance v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    iget-boolean v3, p0, Lcom/vkontakte/android/PhotoAttachment;->paddingAfter:Z

    if-eqz v3, :cond_0

    const/high16 v1, 0x41200000    # 10.0f

    :cond_0
    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;-><init>(II)V

    .line 197
    .local v0, "lp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    iget-boolean v1, p0, Lcom/vkontakte/android/PhotoAttachment;->breakAfter:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/vkontakte/android/PhotoAttachment;->floating:Z

    if-eqz v1, :cond_2

    .line 198
    :cond_1
    iget-boolean v1, p0, Lcom/vkontakte/android/PhotoAttachment;->breakAfter:Z

    iput-boolean v1, v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->breakAfter:Z

    .line 199
    iget-boolean v1, p0, Lcom/vkontakte/android/PhotoAttachment;->floating:Z

    iput-boolean v1, v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->floating:Z

    .line 201
    :cond_2
    iget v1, p0, Lcom/vkontakte/android/PhotoAttachment;->displayW:I

    iput v1, v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->width:I

    .line 202
    iget v1, p0, Lcom/vkontakte/android/PhotoAttachment;->displayH:I

    iput v1, v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->height:I

    .line 203
    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 350
    iget v0, p0, Lcom/vkontakte/android/PhotoAttachment;->displayW:I

    return v0
.end method

.method public getWidth(C)I
    .locals 3
    .param p1, "sz"    # C

    .prologue
    .line 293
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget v0, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->width:I

    return v0
.end method

.method public serialize(Ljava/io/DataOutputStream;)V
    .locals 5
    .param p1, "os"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 213
    iget-object v4, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 214
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 215
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 216
    .local v2, "k":Ljava/lang/String;
    iget-object v4, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/PhotoAttachment$Image;

    .line 217
    .local v1, "im":Lcom/vkontakte/android/PhotoAttachment$Image;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 218
    iget-object v4, v1, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 219
    iget v4, v1, Lcom/vkontakte/android/PhotoAttachment$Image;->width:I

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 220
    iget v4, v1, Lcom/vkontakte/android/PhotoAttachment$Image;->height:I

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_0

    .line 222
    .end local v1    # "im":Lcom/vkontakte/android/PhotoAttachment$Image;
    .end local v2    # "k":Ljava/lang/String;
    :cond_0
    iget v4, p0, Lcom/vkontakte/android/PhotoAttachment;->oid:I

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 223
    iget v4, p0, Lcom/vkontakte/android/PhotoAttachment;->pid:I

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 224
    iget v4, p0, Lcom/vkontakte/android/PhotoAttachment;->aid:I

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 225
    iget-object v4, p0, Lcom/vkontakte/android/PhotoAttachment;->descr:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/vkontakte/android/PhotoAttachment;->descr:Ljava/lang/String;

    :goto_1
    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 226
    iget v4, p0, Lcom/vkontakte/android/PhotoAttachment;->uid:I

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 227
    iget v4, p0, Lcom/vkontakte/android/PhotoAttachment;->date:I

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 228
    iget-object v4, p0, Lcom/vkontakte/android/PhotoAttachment;->accessKey:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/vkontakte/android/PhotoAttachment;->accessKey:Ljava/lang/String;

    :goto_2
    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 229
    iget v4, p0, Lcom/vkontakte/android/PhotoAttachment;->postID:I

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 230
    return-void

    .line 225
    :cond_1
    const-string v4, ""

    goto :goto_1

    .line 228
    :cond_2
    const-string v4, ""

    goto :goto_2
.end method

.method public setImage(Landroid/view/View;Landroid/graphics/Bitmap;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "img"    # Landroid/graphics/Bitmap;
    .param p3, "fromCache"    # Z

    .prologue
    .line 385
    if-nez p1, :cond_0

    .line 391
    .end local p1    # "view":Landroid/view/View;
    :goto_0
    return-void

    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    move-object v0, p1

    .line 386
    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 387
    if-nez p3, :cond_1

    .line 388
    check-cast p1, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->animateAlpha()V

    goto :goto_0

    .line 390
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    check-cast p1, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->dontAnimate()V

    goto :goto_0
.end method

.method public setPaddingAfter(Z)V
    .locals 0
    .param p1, "p"    # Z

    .prologue
    .line 345
    iput-boolean p1, p0, Lcom/vkontakte/android/PhotoAttachment;->paddingAfter:Z

    .line 346
    return-void
.end method

.method public setViewSize(FFZZ)V
    .locals 3
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "breakAfter"    # Z
    .param p4, "floating"    # Z

    .prologue
    .line 334
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/PhotoAttachment;->displayW:I

    .line 335
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/PhotoAttachment;->displayH:I

    .line 336
    iget v0, p0, Lcom/vkontakte/android/PhotoAttachment;->displayW:I

    iget v1, p0, Lcom/vkontakte/android/PhotoAttachment;->displayH:I

    iget-object v2, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    invoke-direct {p0, v0, v1, v2}, Lcom/vkontakte/android/PhotoAttachment;->getThumbType(IILjava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/PhotoAttachment;->thumbType:Ljava/lang/String;

    .line 338
    iput-boolean p3, p0, Lcom/vkontakte/android/PhotoAttachment;->breakAfter:Z

    .line 339
    iput-boolean p4, p0, Lcom/vkontakte/android/PhotoAttachment;->floating:Z

    .line 340
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/PhotoAttachment;->hasSize:Z

    .line 341
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "photo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/PhotoAttachment;->oid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/PhotoAttachment;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/vkontakte/android/PhotoAttachment;->accessKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/vkontakte/android/PhotoAttachment;->accessKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 147
    iget-object v4, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 148
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 150
    .local v2, "k":Ljava/lang/String;
    iget-object v4, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/PhotoAttachment$Image;

    .line 151
    .local v1, "im":Lcom/vkontakte/android/PhotoAttachment$Image;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget-object v4, v1, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget v4, v1, Lcom/vkontakte/android/PhotoAttachment$Image;->width:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget v4, v1, Lcom/vkontakte/android/PhotoAttachment$Image;->height:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 156
    .end local v1    # "im":Lcom/vkontakte/android/PhotoAttachment$Image;
    .end local v2    # "k":Ljava/lang/String;
    :cond_0
    iget v4, p0, Lcom/vkontakte/android/PhotoAttachment;->oid:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget v4, p0, Lcom/vkontakte/android/PhotoAttachment;->pid:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget v4, p0, Lcom/vkontakte/android/PhotoAttachment;->aid:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget-object v4, p0, Lcom/vkontakte/android/PhotoAttachment;->descr:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget v4, p0, Lcom/vkontakte/android/PhotoAttachment;->uid:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget v4, p0, Lcom/vkontakte/android/PhotoAttachment;->date:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget-object v4, p0, Lcom/vkontakte/android/PhotoAttachment;->accessKey:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget v4, p0, Lcom/vkontakte/android/PhotoAttachment;->postID:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    return-void
.end method
