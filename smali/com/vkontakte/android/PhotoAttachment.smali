.class public Lcom/vkontakte/android/PhotoAttachment;
.super Lcom/vkontakte/android/Attachment;
.source "PhotoAttachment.java"

# interfaces
.implements Lcom/vkontakte/android/ThumbAttachment;


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
.field aid:I

.field breakAfter:Z

.field descr:Ljava/lang/String;

.field displayH:I

.field displayW:I

.field floating:Z

.field hasSize:Z

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

.field oid:I

.field pid:I

.field ratio:F

.field srcBig:Ljava/lang/String;

.field srcThumb:Ljava/lang/String;

.field thumbType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/vkontakte/android/PhotoAttachment$1;

    invoke-direct {v0}, Lcom/vkontakte/android/PhotoAttachment$1;-><init>()V

    .line 83
    sput-object v0, Lcom/vkontakte/android/PhotoAttachment;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 97
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 7
    .param p1, "thumb"    # Ljava/lang/String;
    .param p2, "big"    # Ljava/lang/String;
    .param p3, "_oid"    # I
    .param p4, "_pid"    # I
    .param p5, "_aid"    # I

    .prologue
    .line 76
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/vkontakte/android/PhotoAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 6
    .param p1, "thumb"    # Ljava/lang/String;
    .param p2, "big"    # Ljava/lang/String;
    .param p3, "_oid"    # I
    .param p4, "_pid"    # I
    .param p5, "_aid"    # I
    .param p6, "_descr"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 80
    const/4 v0, 0x2

    new-array v1, v0, [Lcom/vkontakte/android/PhotoAttachment$Image;

    new-instance v0, Lcom/vkontakte/android/PhotoAttachment$Image;

    const/16 v2, 0x6d

    invoke-direct {v0, v2, p1, v4, v4}, Lcom/vkontakte/android/PhotoAttachment$Image;-><init>(CLjava/lang/String;II)V

    aput-object v0, v1, v4

    const/4 v0, 0x1

    new-instance v2, Lcom/vkontakte/android/PhotoAttachment$Image;

    const/16 v3, 0x78

    invoke-direct {v2, v3, p2, v4, v4}, Lcom/vkontakte/android/PhotoAttachment$Image;-><init>(CLjava/lang/String;II)V

    aput-object v2, v1, v0

    move-object v0, p0

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/vkontakte/android/PhotoAttachment;-><init>([Lcom/vkontakte/android/PhotoAttachment$Image;IIILjava/lang/String;)V

    .line 81
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
    .line 56
    .local p1, "_images":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/vkontakte/android/PhotoAttachment$Image;>;"
    invoke-direct {p0}, Lcom/vkontakte/android/Attachment;-><init>()V

    .line 30
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    .line 32
    const-string v1, "m"

    iput-object v1, p0, Lcom/vkontakte/android/PhotoAttachment;->thumbType:Ljava/lang/String;

    .line 57
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 58
    iput p3, p0, Lcom/vkontakte/android/PhotoAttachment;->pid:I

    .line 59
    iput p2, p0, Lcom/vkontakte/android/PhotoAttachment;->oid:I

    .line 60
    iput p4, p0, Lcom/vkontakte/android/PhotoAttachment;->aid:I

    .line 61
    iput-object p5, p0, Lcom/vkontakte/android/PhotoAttachment;->descr:Ljava/lang/String;

    .line 63
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v2, "m"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/PhotoAttachment$Image;

    .line 64
    .local v0, "im":Lcom/vkontakte/android/PhotoAttachment$Image;
    iget v1, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->width:I

    if-lez v1, :cond_2

    iget v1, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->height:I

    if-lez v1, :cond_2

    .line 65
    iget v1, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->width:I

    int-to-float v1, v1

    iget v2, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->height:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/vkontakte/android/PhotoAttachment;->ratio:F

    .line 70
    :goto_0
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    sget v1, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_0

    sget-boolean v1, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v1, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v3, "y"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "y"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget-object v1, v1, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    iput-object v1, p0, Lcom/vkontakte/android/PhotoAttachment;->srcBig:Ljava/lang/String;

    .line 72
    :cond_1
    iget-object v1, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v2, "m"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget-object v1, v1, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    iput-object v1, p0, Lcom/vkontakte/android/PhotoAttachment;->srcThumb:Ljava/lang/String;

    .line 73
    return-void

    .line 67
    :cond_2
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/vkontakte/android/PhotoAttachment;->ratio:F

    goto :goto_0

    .line 71
    :cond_3
    const-string v1, "x"

    goto :goto_1
.end method

.method public constructor <init>([Lcom/vkontakte/android/PhotoAttachment$Image;IIILjava/lang/String;)V
    .locals 7
    .param p1, "_images"    # [Lcom/vkontakte/android/PhotoAttachment$Image;
    .param p2, "_oid"    # I
    .param p3, "_pid"    # I
    .param p4, "_aid"    # I
    .param p5, "_descr"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/vkontakte/android/Attachment;-><init>()V

    .line 30
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    .line 32
    const-string v2, "m"

    iput-object v2, p0, Lcom/vkontakte/android/PhotoAttachment;->thumbType:Ljava/lang/String;

    .line 36
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_2

    .line 37
    iput p3, p0, Lcom/vkontakte/android/PhotoAttachment;->pid:I

    .line 38
    iput p2, p0, Lcom/vkontakte/android/PhotoAttachment;->oid:I

    .line 39
    iput p4, p0, Lcom/vkontakte/android/PhotoAttachment;->aid:I

    .line 40
    iput-object p5, p0, Lcom/vkontakte/android/PhotoAttachment;->descr:Ljava/lang/String;

    .line 42
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v3, "m"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/PhotoAttachment$Image;

    .line 43
    .local v0, "im":Lcom/vkontakte/android/PhotoAttachment$Image;
    iget v2, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->width:I

    if-lez v2, :cond_4

    iget v2, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->height:I

    if-lez v2, :cond_4

    .line 44
    iget v2, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->width:I

    int-to-float v2, v2

    iget v3, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/vkontakte/android/PhotoAttachment;->ratio:F

    .line 49
    :goto_1
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    iget-object v3, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    sget v2, Lcom/vkontakte/android/Global;->displayDensity:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v4

    if-gtz v2, :cond_0

    sget-boolean v2, Lcom/vkontakte/android/Global;->isTablet:Z

    if-eqz v2, :cond_5

    :cond_0
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v4, "y"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "y"

    :goto_2
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget-object v2, v2, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    iput-object v2, p0, Lcom/vkontakte/android/PhotoAttachment;->srcBig:Ljava/lang/String;

    .line 53
    :cond_1
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string v3, "m"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget-object v2, v2, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    iput-object v2, p0, Lcom/vkontakte/android/PhotoAttachment;->srcThumb:Ljava/lang/String;

    .line 54
    return-void

    .line 36
    .end local v0    # "im":Lcom/vkontakte/android/PhotoAttachment$Image;
    :cond_2
    aget-object v1, p1, v2

    .local v1, "img":Lcom/vkontakte/android/PhotoAttachment$Image;
    iget-object v4, v1, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-char v6, v1, Lcom/vkontakte/android/PhotoAttachment$Image;->type:C

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46
    .end local v1    # "img":Lcom/vkontakte/android/PhotoAttachment$Image;
    .restart local v0    # "im":Lcom/vkontakte/android/PhotoAttachment$Image;
    :cond_4
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/vkontakte/android/PhotoAttachment;->ratio:F

    goto :goto_1

    .line 50
    :cond_5
    const-string v2, "x"

    goto :goto_2
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
    .line 253
    .local p3, "imgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/vkontakte/android/PhotoAttachment$Image;>;"
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 254
    .local v0, "max_s":I
    const/16 v1, 0x4b

    if-gt v0, v1, :cond_0

    .line 255
    const-string v1, "s"

    .line 267
    :goto_0
    return-object v1

    .line 256
    :cond_0
    const/16 v1, 0x82

    if-ge v0, v1, :cond_1

    .line 257
    const-string v1, "m"

    goto :goto_0

    .line 258
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

    .line 259
    const-string v1, "o"

    goto :goto_0

    .line 260
    :cond_2
    const-string v1, "p"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

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

    if-lt v1, p2, :cond_3

    .line 261
    const-string v1, "p"

    goto :goto_0

    .line 262
    :cond_3
    const-string v1, "q"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "q"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget v1, v1, Lcom/vkontakte/android/PhotoAttachment$Image;->width:I

    if-lt v1, p1, :cond_4

    const-string v1, "q"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget v1, v1, Lcom/vkontakte/android/PhotoAttachment$Image;->height:I

    if-lt v1, p2, :cond_4

    .line 263
    const-string v1, "q"

    goto :goto_0

    .line 264
    :cond_4
    const-string v1, "r"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "r"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget v1, v1, Lcom/vkontakte/android/PhotoAttachment$Image;->width:I

    if-lt v1, p1, :cond_5

    const-string v1, "r"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget v1, v1, Lcom/vkontakte/android/PhotoAttachment$Image;->height:I

    if-lt v1, p2, :cond_5

    .line 265
    const-string v1, "r"

    goto/16 :goto_0

    .line 267
    :cond_5
    const-string v1, "x"

    goto/16 :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public getFullView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lcom/vkontakte/android/PhotoAttachment;->getViewForList(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lcom/vkontakte/android/PhotoAttachment;->displayH:I

    return v0
.end method

.method public getRatio()F
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/vkontakte/android/PhotoAttachment;->ratio:F

    return v0
.end method

.method public getThumbURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/vkontakte/android/PhotoAttachment;->thumbType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/PhotoAttachment$Image;

    iget-object v0, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :goto_0
    return-object v0

    .line 295
    :catch_0
    move-exception v0

    .line 296
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getViewForList(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 127
    new-instance v0, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;

    invoke-direct {v0, p0, p1}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;-><init>(Lcom/vkontakte/android/PhotoAttachment;Landroid/content/Context;)V

    .line 129
    .local v0, "iv":Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;
    invoke-virtual {p0}, Lcom/vkontakte/android/PhotoAttachment;->getThumbURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->setTag(Ljava/lang/Object;)V

    .line 130
    const v2, 0x7f020208

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->setImageResource(I)V

    .line 133
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->setId(I)V

    .line 134
    iget-boolean v2, p0, Lcom/vkontakte/android/PhotoAttachment;->hasSize:Z

    if-eqz v2, :cond_5

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    :goto_0
    invoke-virtual {v0, v2}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 135
    iget v2, p0, Lcom/vkontakte/android/PhotoAttachment;->displayW:I

    if-nez v2, :cond_0

    const/16 v2, 0x87

    iput v2, p0, Lcom/vkontakte/android/PhotoAttachment;->displayW:I

    .line 136
    :cond_0
    iget v2, p0, Lcom/vkontakte/android/PhotoAttachment;->displayH:I

    if-nez v2, :cond_1

    const/16 v2, 0x64

    iput v2, p0, Lcom/vkontakte/android/PhotoAttachment;->displayH:I

    .line 137
    :cond_1
    iget v2, p0, Lcom/vkontakte/android/PhotoAttachment;->displayH:I

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->setMinimumHeight(I)V

    .line 138
    iget v2, p0, Lcom/vkontakte/android/PhotoAttachment;->displayH:I

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->setMaxHeight(I)V

    .line 139
    iget v2, p0, Lcom/vkontakte/android/PhotoAttachment;->displayW:I

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->setMinimumWidth(I)V

    .line 140
    iget v2, p0, Lcom/vkontakte/android/PhotoAttachment;->displayW:I

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->setMaxWidth(I)V

    .line 141
    iget-boolean v2, p0, Lcom/vkontakte/android/PhotoAttachment;->breakAfter:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/vkontakte/android/PhotoAttachment;->floating:Z

    if-eqz v2, :cond_3

    .line 142
    :cond_2
    new-instance v1, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v2

    invoke-static {v3}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;-><init>(II)V

    .line 143
    .local v1, "params":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    iget-boolean v2, p0, Lcom/vkontakte/android/PhotoAttachment;->breakAfter:Z

    iput-boolean v2, v1, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->breakAfter:Z

    .line 144
    iget-boolean v2, p0, Lcom/vkontakte/android/PhotoAttachment;->floating:Z

    iput-boolean v2, v1, Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;->floating:Z

    .line 145
    invoke-virtual {v0, v1}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    .end local v1    # "params":Lcom/vkontakte/android/ui/FlowLayout$LayoutParams;
    :cond_3
    iget-object v2, p0, Lcom/vkontakte/android/PhotoAttachment;->srcBig:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 148
    new-instance v2, Lcom/vkontakte/android/PhotoAttachment$2;

    invoke-direct {v2, p0, p1}, Lcom/vkontakte/android/PhotoAttachment$2;-><init>(Lcom/vkontakte/android/PhotoAttachment;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/vkontakte/android/PhotoAttachment$FixedSizeImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    :cond_4
    return-object v0

    .line 134
    :cond_5
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lcom/vkontakte/android/PhotoAttachment;->displayW:I

    return v0
.end method

.method public getWidth(C)I
    .locals 3
    .param p1, "sz"    # C

    .prologue
    .line 233
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
    .line 160
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 166
    iget-object v3, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 167
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 168
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 175
    iget v3, p0, Lcom/vkontakte/android/PhotoAttachment;->oid:I

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 176
    iget v3, p0, Lcom/vkontakte/android/PhotoAttachment;->pid:I

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 177
    iget v3, p0, Lcom/vkontakte/android/PhotoAttachment;->aid:I

    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 178
    return-void

    .line 168
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 169
    .local v1, "k":Ljava/lang/String;
    iget-object v4, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/PhotoAttachment$Image;

    .line 170
    .local v0, "im":Lcom/vkontakte/android/PhotoAttachment$Image;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeChar(I)V

    .line 171
    iget-object v4, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 172
    iget v4, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->width:I

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 173
    iget v4, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->height:I

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_0
.end method

.method public setViewSize(FFZZ)V
    .locals 3
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "breakAfter"    # Z
    .param p4, "floating"    # Z

    .prologue
    .line 273
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/PhotoAttachment;->displayW:I

    .line 274
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/vkontakte/android/PhotoAttachment;->displayH:I

    .line 275
    iget v0, p0, Lcom/vkontakte/android/PhotoAttachment;->displayW:I

    iget v1, p0, Lcom/vkontakte/android/PhotoAttachment;->displayH:I

    iget-object v2, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    invoke-direct {p0, v0, v1, v2}, Lcom/vkontakte/android/PhotoAttachment;->getThumbType(IILjava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/PhotoAttachment;->thumbType:Ljava/lang/String;

    .line 277
    iput-boolean p3, p0, Lcom/vkontakte/android/PhotoAttachment;->breakAfter:Z

    .line 278
    iput-boolean p4, p0, Lcom/vkontakte/android/PhotoAttachment;->floating:Z

    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/PhotoAttachment;->hasSize:Z

    .line 280
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 107
    iget-object v3, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 108
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 116
    iget v3, p0, Lcom/vkontakte/android/PhotoAttachment;->oid:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget v3, p0, Lcom/vkontakte/android/PhotoAttachment;->pid:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget v3, p0, Lcom/vkontakte/android/PhotoAttachment;->aid:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    return-void

    .line 109
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 110
    .local v1, "k":Ljava/lang/String;
    iget-object v4, p0, Lcom/vkontakte/android/PhotoAttachment;->images:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkontakte/android/PhotoAttachment$Image;

    .line 111
    .local v0, "im":Lcom/vkontakte/android/PhotoAttachment$Image;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget-object v4, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->url:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget v4, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->width:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget v4, v0, Lcom/vkontakte/android/PhotoAttachment$Image;->height:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
