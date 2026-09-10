.class public Lcom/vkontakte/android/mediapicker/entries/StyleEntry;
.super Ljava/lang/Object;
.source "StyleEntry.java"


# instance fields
.field private cropData:[F

.field private filter_id:I

.field private isEnhanced:B

.field private last_words_width:I

.field private lines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private stylesCount:B

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/vkontakte/android/mediapicker/entries/StyleEntry;)V
    .locals 1
    .param p1, "entry"    # Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iget v0, p1, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->filter_id:I

    iput v0, p0, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->filter_id:I

    .line 26
    iget-object v0, p1, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->cropData:[F

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->cropData:[F

    .line 27
    iget-object v0, p1, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->text:Ljava/lang/String;

    .line 28
    iget-byte v0, p1, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->isEnhanced:B

    iput-byte v0, p0, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->isEnhanced:B

    .line 29
    invoke-direct {p0}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getStyleCount()B

    move-result v0

    iput-byte v0, p0, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->stylesCount:B

    .line 30
    return-void
.end method

.method public static createFromParcel(Landroid/os/Parcel;)Lcom/vkontakte/android/mediapicker/entries/StyleEntry;
    .locals 6
    .param p0, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x1

    .line 286
    new-instance v2, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;

    invoke-direct {v2}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;-><init>()V

    .line 288
    .local v2, "result":Lcom/vkontakte/android/mediapicker/entries/StyleEntry;
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v3

    iput-byte v3, v2, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->stylesCount:B

    .line 291
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v3

    iput-byte v3, v2, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->isEnhanced:B

    .line 294
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-ne v3, v5, :cond_0

    .line 295
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->filter_id:I

    .line 298
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-ne v3, v5, :cond_1

    .line 300
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 301
    .local v1, "length":I
    new-array v3, v1, [F

    iput-object v3, v2, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->cropData:[F

    .line 303
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_3

    .line 308
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-ne v3, v5, :cond_2

    .line 310
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->text:Ljava/lang/String;

    .line 313
    :cond_2
    return-object v2

    .line 304
    .restart local v0    # "i":I
    .restart local v1    # "length":I
    :cond_3
    iget-object v3, v2, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->cropData:[F

    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    aput v4, v3, v0

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getStyleCount()B
    .locals 2

    .prologue
    .line 49
    const/4 v0, 0x0

    .line 51
    .local v0, "count":B
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsEnhanced()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    const/4 v1, 0x1

    int-to-byte v0, v1

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsCropped()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    add-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    .line 57
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsFiltered()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    add-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    .line 60
    :cond_2
    return v0
.end method

.method private updateStylesCount(Z)V
    .locals 2
    .param p1, "increase"    # Z

    .prologue
    .line 65
    iget-byte v1, p0, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->stylesCount:B

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->stylesCount:B

    .line 66
    return-void

    .line 65
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public getAppliedStylesCount()I
    .locals 1

    .prologue
    .line 34
    iget-byte v0, p0, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->stylesCount:B

    return v0
.end method

.method public getCropData()[F
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->cropData:[F

    return-object v0
.end method

.method public getFilterId()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->filter_id:I

    return v0
.end method

.method public getIsCropped()Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->cropData:[F

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIsEnhanced()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 72
    iget-byte v1, p0, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->isEnhanced:B

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIsFiltered()Z
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->filter_id:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIsProcessed()Z
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsFiltered()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsEnhanced()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getIsStyled()Z
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsFiltered()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsCropped()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsTexted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsEnhanced()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getIsTexted()Z
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTextureKey()Ljava/lang/String;
    .locals 7

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsCropped()Z

    move-result v2

    if-nez v2, :cond_1

    .line 117
    const-string v1, "0"

    .line 126
    .local v1, "cropKey":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsEnhanced()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "1"

    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 120
    .end local v1    # "cropKey":Ljava/lang/String;
    :cond_1
    const-string v1, ""

    .line 122
    .restart local v1    # "cropKey":Ljava/lang/String;
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->cropData:[F

    array-length v5, v4

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_0

    aget v0, v4, v3

    .line 123
    .local v0, "coord":F
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    const-string v2, ","

    :goto_2
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 122
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 123
    :cond_2
    const-string v2, ""

    goto :goto_2

    .line 126
    .end local v0    # "coord":F
    :cond_3
    const-string v2, "0"

    goto :goto_0
.end method

.method public getTextureStylesCount()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 39
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsCropped()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsEnhanced()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public removeCropData()[F
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 143
    iget-object v2, p0, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->cropData:[F

    if-nez v2, :cond_0

    move-object v0, v1

    .line 151
    :goto_0
    return-object v0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->cropData:[F

    .line 148
    .local v0, "data":[F
    iput-object v1, p0, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->cropData:[F

    .line 149
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsCropped()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->updateStylesCount(Z)V

    goto :goto_0
.end method

.method public setCropped([F)V
    .locals 1
    .param p1, "data"    # [F

    .prologue
    .line 158
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->cropData:[F

    if-ne v0, p1, :cond_0

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_0
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->cropData:[F

    .line 162
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsCropped()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->updateStylesCount(Z)V

    goto :goto_0
.end method

.method public setEnhanced(Z)V
    .locals 2
    .param p1, "enhanced"    # Z

    .prologue
    .line 77
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 79
    .local v0, "isEnhanced":B
    :goto_0
    iget-byte v1, p0, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->isEnhanced:B

    if-ne v1, v0, :cond_1

    .line 84
    :goto_1
    return-void

    .line 77
    .end local v0    # "isEnhanced":B
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 82
    .restart local v0    # "isEnhanced":B
    :cond_1
    iput-byte v0, p0, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->isEnhanced:B

    .line 83
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsEnhanced()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->updateStylesCount(Z)V

    goto :goto_1
.end method

.method public setFiltered(I)V
    .locals 1
    .param p1, "filter_id"    # I

    .prologue
    .line 105
    iget v0, p0, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->filter_id:I

    if-ne v0, p1, :cond_0

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    iput p1, p0, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->filter_id:I

    .line 109
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsFiltered()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->updateStylesCount(Z)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->text:Ljava/lang/String;

    if-ne v0, p1, :cond_0

    .line 247
    :goto_0
    return-void

    .line 244
    :cond_0
    iput-object p1, p0, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->text:Ljava/lang/String;

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->lines:Ljava/util/List;

    .line 246
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->last_words_width:I

    goto :goto_0
.end method

.method public splitLinesByWidth(ILandroid/text/TextPaint;)Ljava/util/List;
    .locals 10
    .param p1, "width"    # I
    .param p2, "paint"    # Landroid/text/TextPaint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/text/TextPaint;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 177
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsTexted()Z

    move-result v6

    if-nez v6, :cond_0

    .line 178
    const/4 v6, 0x0

    .line 231
    :goto_0
    return-object v6

    .line 180
    :cond_0
    iget-object v6, p0, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->lines:Ljava/util/List;

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->last_words_width:I

    if-ne v6, p1, :cond_1

    .line 181
    iget-object v6, p0, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->lines:Ljava/util/List;

    goto :goto_0

    .line 183
    :cond_1
    iput p1, p0, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->last_words_width:I

    .line 184
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->lines:Ljava/util/List;

    .line 186
    if-lez p1, :cond_2

    iget-object v6, p0, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->text:Ljava/lang/String;

    invoke-virtual {p2, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    int-to-float v9, p1

    cmpg-float v6, v6, v9

    if-gtz v6, :cond_3

    .line 188
    :cond_2
    iget-object v6, p0, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->lines:Ljava/util/List;

    iget-object v7, p0, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->text:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v6, p0, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->lines:Ljava/util/List;

    goto :goto_0

    .line 193
    :cond_3
    iget-object v6, p0, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->text:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 194
    .local v5, "text":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 195
    .local v4, "remaining":Ljava/lang/String;
    const/4 v3, 0x0

    .line 196
    .local v3, "pos":I
    const/4 v1, 0x0

    .line 198
    .local v1, "i":I
    const/4 v0, 0x1

    .local v0, "hasNext":Z
    move v2, v1

    .line 202
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    const/16 v6, 0x1388

    if-lt v2, v6, :cond_5

    .line 231
    :cond_4
    iget-object v6, p0, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->lines:Ljava/util/List;

    goto :goto_0

    .line 205
    :cond_5
    if-eqz v0, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 208
    invoke-virtual {p2, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    int-to-float v9, p1

    cmpg-float v6, v6, v9

    if-gtz v6, :cond_8

    .line 210
    iget-object v6, p0, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->lines:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v3, v6

    .line 213
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_7

    move v0, v7

    .line 215
    :goto_2
    if-eqz v0, :cond_6

    .line 216
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 229
    :cond_6
    :goto_3
    if-eqz v0, :cond_4

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_7
    move v0, v8

    .line 213
    goto :goto_2

    .line 221
    :cond_8
    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    :goto_4
    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 223
    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 225
    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 226
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 221
    :cond_9
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    goto :goto_4
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 253
    iget-byte v1, p0, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->stylesCount:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 256
    iget-byte v1, p0, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->isEnhanced:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 259
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsFiltered()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 261
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsFiltered()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getFilterId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsCropped()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 267
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsCropped()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->cropData:[F

    array-length v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    iget-object v4, p0, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->cropData:[F

    array-length v5, v4

    move v1, v3

    :goto_2
    if-lt v1, v5, :cond_5

    .line 276
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsTexted()Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 278
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->getIsTexted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 280
    iget-object v1, p0, Lcom/vkontakte/android/mediapicker/entries/StyleEntry;->text:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 282
    :cond_2
    return-void

    :cond_3
    move v1, v3

    .line 259
    goto :goto_0

    :cond_4
    move v1, v3

    .line 265
    goto :goto_1

    .line 271
    :cond_5
    aget v0, v4, v1

    .line 272
    .local v0, "i":F
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 271
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0    # "i":F
    :cond_6
    move v2, v3

    .line 276
    goto :goto_3
.end method
