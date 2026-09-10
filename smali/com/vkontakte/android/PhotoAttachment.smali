.class public Lcom/vkontakte/android/PhotoAttachment;
.super Lcom/vkontakte/android/Attachment;
.source "PhotoAttachment.java"

# interfaces
.implements Lcom/vkontakte/android/ThumbAttachment;
.implements Lcom/vkontakte/android/ImageAttachment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;,
        Lcom/vkontakte/android/PhotoAttachment$Image;
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
    .line 120
    new-instance v0, Lcom/vkontakte/android/PhotoAttachment$1;

    invoke-direct {v0}, Lcom/vkontakte/android/PhotoAttachment$1;-><init>()V

    .line 119
    sput-object v0, Lcom/vkontakte/android/PhotoAttachment;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 133
    return-void
.end method

.method public constructor <init>(Lcom/vkontakte/android/Photo;)V
    .locals 6
    .param p1, "photo"    # Lcom/vkontakte/android/Photo;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/vkontakte/android/Attachment;-><init>()V

    .line 35
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    .line 37
    const-string v2, "m"

    iput-object v2, p0, Lcom/vkontakte/android/PhotoAttachment;->thumbType:Ljava/lang/String;

    .line 42
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    const/16 v3, 0x14

    if-ge v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/vkontakte/android/PhotoAttachment;->useSmall:Z

    .line 88
    iget v2, p1, Lcom/vkontakte/android/Photo;->id:I

    iput v2, p0, Lcom/vkontakte/android/PhotoAttachment;->pid:I

    .line 89
    iget v2, p1, Lcom/vkontakte/android/Photo;->ownerID:I

    iput v2, p0, Lcom/vkontakte/android/PhotoAttachment;->oid:I

    .line 90
    iget v2, p1, Lcom/vkontakte/android/Photo;->albumID:I

    iput v2, p0, Lcom/vkontakte/android/PhotoAttachment;->aid:I

    .line 91
    iget v2, p1, Lcom/vkontakte/android/Photo;->userID:I

    iput v2, p0, Lcom/vkontakte/android/PhotoAttachment;->uid:I

    .line 92
    iget v2, p1, Lcom/vkontakte/android/Photo;->date:I

    iput v2, p0, Lcom/vkontakte/android/PhotoAttachment;->date:I

    .line 93
    iget-object v2, p1, Lcom/vkontakte/android/Photo;->descr:Ljava/lang/String;

    iput-object v2, p0, Lcom/vkontakte/android/PhotoAttachment;->descr:Ljava/lang/String;

    .line 94
    iget-object v2, p1, Lcom/vkontakte/android/Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 102
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/PhotoAttachment$Image;

    .line 103
    .local v1, "im":Lcom/vkontakte/android/PhotoAttachment$Image;
    iget v2, v1, Lcom/vkontakte/android/PhotoAttachment$Image;->width:I

    if-lez v2, :cond_2

    iget v2, v1, Lcom/vkontakte/android/PhotoAttachment$Image;->height:I

    if-lez v2, :cond_2

    .line 104
    iget v2, v1, Lcom/vkontakte/android/PhotoAttachment$Image;->width:I

    int-to-float v2, v2

    iget v3, v1, Lcom/vkontakte/android/PhotoAttachment$Image;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/vkontakte/android/PhotoAttachment;->ratio:F

    .line 108
    :goto_2
    iget-object v2, p1, Lcom/vkontakte/android/Photo;->accessKey:Ljava/lang/String;

    iput-object v2, p0, Lcom/vkontakte/android/PhotoAttachment;->accessKey:Ljava/lang/String;

    .line 109
    return-void

    .line 42
    .end local v1    # "im":Lcom/vkontakte/android/PhotoAttachment$Image;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 94
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/Photo$Image;

    .line 95
    .local v1, "im":Lcom/vkontakte/android/Photo$Image;
    new-instance v0, Lcom/vkontakte/android/PhotoAttachment$Image;

    invoke-direct {v0}, Lcom/vkontakte/android/PhotoAttachment$Image;-><init>()V

    .line 96
    .local v0, "i":Lcom/vkontakte/android/PhotoAttachment$Image;
    iget v3, v1, Lcom/vkontakte/android/Photo$Image;->height:I

    iput v3, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->height:I

    .line 97
    iget v3, v1, Lcom/vkontakte/android/Photo$Image;->width:I

    iput v3, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->width:I

    .line 98
    iget-object v3, v1, Lcom/vkontakte/android/Photo$Image;->url:Ljava/lang/String;

    iput-object v3, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    .line 99
    iget-char v3, v1, Lcom/vkontakte/android/Photo$Image;->type:C

    iput-char v3, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->type:C

    .line 100
    iget-object v3, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-char v5, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->type:C

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 106
    .end local v0    # "i":Lcom/vkontakte/android/PhotoAttachment$Image;
    .local v1, "im":Lcom/vkontakte/android/PhotoAttachment$Image;
    :cond_2
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/vkontakte/android/PhotoAttachment;->ratio:F

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
    .line 112
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/vkontakte/android/PhotoAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 9
    .param p1, "thumb"    # Ljava/lang/String;
    .param p2, "big"    # Ljava/lang/String;
    .param p3, "_oid"    # I
    .param p4, "_pid"    # I
    .param p5, "_aid"    # I
    .param p6, "_descr"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 116
    const/4 v0, 0x2

    new-array v1, v0, [Lcom/vkontakte/android/PhotoAttachment$Image;

    new-instance v0, Lcom/vkontakte/android/PhotoAttachment$Image;

    const/16 v2, 0x6d

    invoke-direct {v0, v2, p1, v6, v6}, Lcom/vkontakte/android/PhotoAttachment$Image;-><init>(CLjava/lang/String;II)V

    aput-object v0, v1, v6

    const/4 v0, 0x1

    new-instance v2, Lcom/vkontakte/android/PhotoAttachment$Image;

    const/16 v3, 0x78

    invoke-direct {v2, v3, p2, v6, v6}, Lcom/vkontakte/android/PhotoAttachment$Image;-><init>(CLjava/lang/String;II)V

    aput-object v2, v1, v0

    const-string v8, ""

    move-object v0, p0

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    move v7, v6

    invoke-direct/range {v0 .. v8}, Lcom/vkontakte/android/PhotoAttachment;-><init>([Lcom/vkontakte/android/PhotoAttachment$Image;IIILjava/lang/String;IILjava/lang/String;)V

    .line 117
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
    .line 68
    .local p1, "_images":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/vkontakte/android/PhotoAttachment$Image;>;"
    invoke-direct {p0}, Lcom/vkontakte/android/Attachment;-><init>()V

    .line 35
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    .line 37
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

    .line 69
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 70
    iput p3, p0, Lcom/vkontakte/android/PhotoAttachment;->pid:I

    .line 71
    iput p2, p0, Lcom/vkontakte/android/PhotoAttachment;->oid:I

    .line 72
    iput p4, p0, Lcom/vkontakte/android/PhotoAttachment;->aid:I

    .line 73
    iput-object p5, p0, Lcom/vkontakte/android/PhotoAttachment;->descr:Ljava/lang/String;

    .line 75
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/PhotoAttachment$Image;

    .line 76
    .local v0, "im":Lcom/vkontakte/android/PhotoAttachment$Image;
    iget v1, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->width:I

    if-lez v1, :cond_3

    iget v1, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->height:I

    if-lez v1, :cond_3

    .line 77
    iget v1, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->width:I

    int-to-float v1, v1

    iget v2, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->height:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/vkontakte/android/PhotoAttachment;->ratio:F

    .line 82
    :goto_1
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
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

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v2, "m"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget-object v1, v1, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    iput-object v1, p0, Lcom/vkontakte/android/PhotoAttachment;->srcThumb:Ljava/lang/String;

    .line 85
    return-void

    .line 42
    .end local v0    # "im":Lcom/vkontakte/android/PhotoAttachment$Image;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 79
    .restart local v0    # "im":Lcom/vkontakte/android/PhotoAttachment$Image;
    :cond_3
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/vkontakte/android/PhotoAttachment;->ratio:F

    goto :goto_1

    .line 83
    :cond_4
    const-string v1, "x"

    goto :goto_2
.end method

.method public constructor <init>([Lcom/vkontakte/android/PhotoAttachment$Image;IIILjava/lang/String;IILjava/lang/String;)V
    .locals 7
    .param p1, "_images"    # [Lcom/vkontakte/android/PhotoAttachment$Image;
    .param p2, "_oid"    # I
    .param p3, "_pid"    # I
    .param p4, "_aid"    # I
    .param p5, "_descr"    # Ljava/lang/String;
    .param p6, "_uid"    # I
    .param p7, "_date"    # I
    .param p8, "akey"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 44
    invoke-direct {p0}, Lcom/vkontakte/android/Attachment;-><init>()V

    .line 35
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    .line 37
    const-string v2, "m"

    iput-object v2, p0, Lcom/vkontakte/android/PhotoAttachment;->thumbType:Ljava/lang/String;

    .line 42
    sget-object v2, Lcom/vkontakte/android/VKApplication;->context:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    const/16 v4, 0x14

    if-ge v2, v4, :cond_2

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/vkontakte/android/PhotoAttachment;->useSmall:Z

    .line 45
    array-length v2, p1

    :goto_1
    if-lt v3, v2, :cond_3

    .line 46
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
    iput p7, p0, Lcom/vkontakte/android/PhotoAttachment;->date:I

    .line 52
    iput-object p8, p0, Lcom/vkontakte/android/PhotoAttachment;->accessKey:Ljava/lang/String;

    .line 54
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/PhotoAttachment$Image;

    .line 55
    .local v0, "im":Lcom/vkontakte/android/PhotoAttachment$Image;
    iget v2, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->width:I

    if-lez v2, :cond_5

    iget v2, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->height:I

    if-lez v2, :cond_5

    .line 56
    iget v2, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->width:I

    int-to-float v2, v2

    iget v3, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/vkontakte/android/PhotoAttachment;->ratio:F

    .line 61
    :goto_2
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 62
    iget-object v3, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    sget v2, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v4

    if-gtz v2, :cond_0

    sget-boolean v2, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v2, :cond_6

    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v4, "y"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "y"

    :goto_3
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget-object v2, v2, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    iput-object v2, p0, Lcom/vkontakte/android/PhotoAttachment;->srcBig:Ljava/lang/String;

    .line 65
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v3, "m"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget-object v2, v2, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    iput-object v2, p0, Lcom/vkontakte/android/PhotoAttachment;->srcThumb:Ljava/lang/String;

    .line 66
    return-void

    .end local v0    # "im":Lcom/vkontakte/android/PhotoAttachment$Image;
    :cond_2
    move v2, v3

    .line 42
    goto :goto_0

    .line 45
    :cond_3
    aget-object v1, p1, v3

    .local v1, "img":Lcom/vkontakte/android/PhotoAttachment$Image;
    iget-object v4, v1, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-char v6, v1, Lcom/vkontakte/android/PhotoAttachment$Image;->type:C

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 58
    .end local v1    # "img":Lcom/vkontakte/android/PhotoAttachment$Image;
    .restart local v0    # "im":Lcom/vkontakte/android/PhotoAttachment$Image;
    :cond_5
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/vkontakte/android/PhotoAttachment;->ratio:F

    goto :goto_2

    .line 62
    :cond_6
    const-string v2, "x"

    goto :goto_3
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
    .line 308
    .local p3, "imgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/vkontakte/android/PhotoAttachment$Image;>;"
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 309
    .local v0, "max_s":I
    const/16 v1, 0x4b

    if-gt v0, v1, :cond_0

    .line 310
    const-string v1, "s"

    .line 322
    :goto_0
    return-object v1

    .line 311
    :cond_0
    const/16 v1, 0x82

    if-ge v0, v1, :cond_1

    .line 312
    const-string v1, "m"

    goto :goto_0

    .line 313
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

    .line 314
    const-string v1, "o"

    goto :goto_0

    .line 315
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

    .line 316
    :cond_4
    const-string v1, "p"

    goto :goto_0

    .line 317
    :cond_5
    const-string v1, "q"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

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

    if-ge v1, p2, :cond_7

    :cond_6
    invoke-static {}, Lcom/vkontakte/android/NetworkStateReceiver;->isHighSpeed()Z

    move-result v1

    if-nez v1, :cond_8

    .line 318
    :cond_7
    const-string v1, "q"

    goto :goto_0

    .line 319
    :cond_8
    const-string v1, "r"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "r"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget v1, v1, Lcom/vkontakte/android/PhotoAttachment$Image;->width:I

    if-lt v1, p1, :cond_9

    const-string v1, "r"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget v1, v1, Lcom/vkontakte/android/PhotoAttachment$Image;->height:I

    if-lt v1, p2, :cond_9

    .line 320
    const-string v1, "r"

    goto/16 :goto_0

    .line 322
    :cond_9
    const-string v1, "x"

    goto/16 :goto_0
.end method


# virtual methods
.method public clearImage(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 386
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "view":Landroid/view/View;
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-boolean v0, p0, Lcom/vkontakte/android/PhotoAttachment;->photosMode:Z

    if-eqz v0, :cond_0

    const v0, -0xededee

    :goto_0
    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 387
    return-void

    .line 386
    :cond_0
    const v0, -0xd0d0e

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public getFullView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vkontakte/android/PhotoAttachment;->getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Lcom/vkontakte/android/PhotoAttachment;->displayH:I

    return v0
.end method

.method public getImageURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoAttachment;->getThumbURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRatio()F
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lcom/vkontakte/android/PhotoAttachment;->ratio:F

    return v0
.end method

.method public getThumbURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 354
    :try_start_0
    invoke-static {}, Lcom/vkontakte/android/NetworkStateReceiver;->isHighSpeed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/vkontakte/android/PhotoAttachment;->thumbType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget-object v0, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    .line 362
    :goto_0
    return-object v0

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v1, "p"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v1, "p"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget-object v0, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    goto :goto_0

    .line 360
    :cond_1
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v1, "m"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget-object v0, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 361
    :catch_0
    move-exception v0

    .line 362
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reuse"    # Landroid/view/View;

    .prologue
    .line 167
    const-string v2, "photo"

    invoke-static {p1, v2}, Lcom/vkontakte/android/Attachment;->getReusableView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;

    .line 168
    .local v0, "iv":Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;
    const v2, 0x7f020209

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->setImageResource(I)V

    .line 169
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->setId(I)V

    .line 170
    iget-boolean v2, p0, Lcom/vkontakte/android/PhotoAttachment;->hasSize:Z

    if-eqz v2, :cond_4

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    :goto_0
    invoke-virtual {v0, v2}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 171
    iget v2, p0, Lcom/vkontakte/android/PhotoAttachment;->displayW:I

    if-nez v2, :cond_0

    const/16 v2, 0x87

    iput v2, p0, Lcom/vkontakte/android/PhotoAttachment;->displayW:I

    .line 172
    :cond_0
    iget v2, p0, Lcom/vkontakte/android/PhotoAttachment;->displayH:I

    if-nez v2, :cond_1

    const/16 v2, 0x64

    iput v2, p0, Lcom/vkontakte/android/PhotoAttachment;->displayH:I

    .line 173
    :cond_1
    iget v2, p0, Lcom/vkontakte/android/PhotoAttachment;->displayH:I

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->setMinimumHeight(I)V

    .line 174
    iget v2, p0, Lcom/vkontakte/android/PhotoAttachment;->displayH:I

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->setMaxHeight(I)V

    .line 175
    iget v2, p0, Lcom/vkontakte/android/PhotoAttachment;->displayW:I

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->setMinimumWidth(I)V

    .line 176
    iget v2, p0, Lcom/vkontakte/android/PhotoAttachment;->displayW:I

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->setMaxWidth(I)V

    .line 177
    iget v2, p0, Lcom/vkontakte/android/PhotoAttachment;->displayW:I

    iput v2, v0, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->displayW:I

    .line 178
    iget v2, p0, Lcom/vkontakte/android/PhotoAttachment;->displayH:I

    iput v2, v0, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->displayH:I

    .line 179
    new-instance v1, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    iget-boolean v2, p0, Lcom/vkontakte/android/PhotoAttachment;->paddingAfter:Z

    if-eqz v2, :cond_5

    const/16 v2, 0xa

    :goto_1
    int-to-float v2, v2

    invoke-static {v2}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-direct {v1, v3, v2}, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;-><init>(II)V

    .line 180
    .local v1, "params":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    iget-boolean v2, p0, Lcom/vkontakte/android/PhotoAttachment;->breakAfter:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/vkontakte/android/PhotoAttachment;->floating:Z

    if-eqz v2, :cond_3

    .line 181
    :cond_2
    iget-boolean v2, p0, Lcom/vkontakte/android/PhotoAttachment;->breakAfter:Z

    iput-boolean v2, v1, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->breakAfter:Z

    .line 182
    iget-boolean v2, p0, Lcom/vkontakte/android/PhotoAttachment;->floating:Z

    iput-boolean v2, v1, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->floating:Z

    .line 184
    :cond_3
    invoke-virtual {v0, v1}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    return-object v0

    .line 170
    .end local v1    # "params":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    :cond_4
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    .line 179
    :cond_5
    const/4 v2, 0x2

    goto :goto_1
.end method

.method public getViewLayoutParams()Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    .locals 3

    .prologue
    .line 191
    new-instance v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    iget-boolean v1, p0, Lcom/vkontakte/android/PhotoAttachment;->paddingAfter:Z

    if-eqz v1, :cond_2

    const/16 v1, 0xa

    :goto_0
    int-to-float v1, v1

    invoke-static {v1}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;-><init>(II)V

    .line 192
    .local v0, "lp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    iget-boolean v1, p0, Lcom/vkontakte/android/PhotoAttachment;->breakAfter:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/vkontakte/android/PhotoAttachment;->floating:Z

    if-eqz v1, :cond_1

    .line 193
    :cond_0
    iget-boolean v1, p0, Lcom/vkontakte/android/PhotoAttachment;->breakAfter:Z

    iput-boolean v1, v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->breakAfter:Z

    .line 194
    iget-boolean v1, p0, Lcom/vkontakte/android/PhotoAttachment;->floating:Z

    iput-boolean v1, v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->floating:Z

    .line 196
    :cond_1
    iget v1, p0, Lcom/vkontakte/android/PhotoAttachment;->displayW:I

    iput v1, v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->width:I

    .line 197
    iget v1, p0, Lcom/vkontakte/android/PhotoAttachment;->displayH:I

    iput v1, v0, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->height:I

    .line 198
    return-object v0

    .line 191
    .end local v0    # "lp":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    :cond_2
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Lcom/vkontakte/android/PhotoAttachment;->displayW:I

    return v0
.end method

.method public getWidth(C)I
    .locals 3
    .param p1, "sz"    # C

    .prologue
    .line 287
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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
    .line 202
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 208
    iget-object v3, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 209
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 210
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 217
    iget v3, p0, Lcom/vkontakte/android/PhotoAttachment;->oid:I

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 218
    iget v3, p0, Lcom/vkontakte/android/PhotoAttachment;->pid:I

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 219
    iget v3, p0, Lcom/vkontakte/android/PhotoAttachment;->aid:I

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 220
    iget-object v3, p0, Lcom/vkontakte/android/PhotoAttachment;->descr:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/vkontakte/android/PhotoAttachment;->descr:Ljava/lang/String;

    :goto_1
    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 221
    iget v3, p0, Lcom/vkontakte/android/PhotoAttachment;->uid:I

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 222
    iget v3, p0, Lcom/vkontakte/android/PhotoAttachment;->date:I

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 223
    iget-object v3, p0, Lcom/vkontakte/android/PhotoAttachment;->accessKey:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/vkontakte/android/PhotoAttachment;->accessKey:Ljava/lang/String;

    :goto_2
    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 224
    return-void

    .line 210
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 211
    .local v1, "k":Ljava/lang/String;
    iget-object v4, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/PhotoAttachment$Image;

    .line 212
    .local v0, "im":Lcom/vkontakte/android/PhotoAttachment$Image;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 213
    iget-object v4, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 214
    iget v4, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->width:I

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 215
    iget v4, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->height:I

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_0

    .line 220
    .end local v0    # "im":Lcom/vkontakte/android/PhotoAttachment$Image;
    .end local v1    # "k":Ljava/lang/String;
    :cond_1
    const-string v3, ""

    goto :goto_1

    .line 223
    :cond_2
    const-string v3, ""

    goto :goto_2
.end method

.method public setImage(Landroid/view/View;Landroid/graphics/Bitmap;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "img"    # Landroid/graphics/Bitmap;
    .param p3, "fromCache"    # Z

    .prologue
    .line 376
    if-nez p1, :cond_0

    .line 382
    .end local p1    # "view":Landroid/view/View;
    :goto_0
    return-void

    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    move-object v0, p1

    .line 377
    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 378
    if-nez p3, :cond_1

    .line 379
    check-cast p1, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->animateAlpha()V

    goto :goto_0

    .line 381
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
    .line 339
    iput-boolean p1, p0, Lcom/vkontakte/android/PhotoAttachment;->paddingAfter:Z

    .line 340
    return-void
.end method

.method public setViewSize(FFZZ)V
    .locals 3
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "breakAfter"    # Z
    .param p4, "floating"    # Z

    .prologue
    .line 328
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/PhotoAttachment;->displayW:I

    .line 329
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/PhotoAttachment;->displayH:I

    .line 330
    iget v0, p0, Lcom/vkontakte/android/PhotoAttachment;->displayW:I

    iget v1, p0, Lcom/vkontakte/android/PhotoAttachment;->displayH:I

    iget-object v2, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    invoke-direct {p0, v0, v1, v2}, Lcom/vkontakte/android/PhotoAttachment;->getThumbType(IILjava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/PhotoAttachment;->thumbType:Ljava/lang/String;

    .line 332
    iput-boolean p3, p0, Lcom/vkontakte/android/PhotoAttachment;->breakAfter:Z

    .line 333
    iput-boolean p4, p0, Lcom/vkontakte/android/PhotoAttachment;->floating:Z

    .line 334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/PhotoAttachment;->hasSize:Z

    .line 335
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "photo"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/vkontakte/android/PhotoAttachment;->oid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkontakte/android/PhotoAttachment;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 143
    iget-object v3, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 144
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 152
    iget v3, p0, Lcom/vkontakte/android/PhotoAttachment;->oid:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget v3, p0, Lcom/vkontakte/android/PhotoAttachment;->pid:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget v3, p0, Lcom/vkontakte/android/PhotoAttachment;->aid:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget-object v3, p0, Lcom/vkontakte/android/PhotoAttachment;->descr:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget v3, p0, Lcom/vkontakte/android/PhotoAttachment;->uid:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget v3, p0, Lcom/vkontakte/android/PhotoAttachment;->date:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget-object v3, p0, Lcom/vkontakte/android/PhotoAttachment;->accessKey:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    return-void

    .line 145
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 146
    .local v1, "k":Ljava/lang/String;
    iget-object v4, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/PhotoAttachment$Image;

    .line 147
    .local v0, "im":Lcom/vkontakte/android/PhotoAttachment$Image;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-object v4, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget v4, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->width:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget v4, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->height:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
