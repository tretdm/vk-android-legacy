.class public Lcom/vkontakte/android/imagepicker/entries/StyleEntry;
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

.method public constructor <init>(Lcom/vkontakte/android/imagepicker/entries/StyleEntry;)V
    .locals 1
    .param p1, "entry"    # Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iget v0, p1, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->filter_id:I

    iput v0, p0, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->filter_id:I

    .line 26
    iget-object v0, p1, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->cropData:[F

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->cropData:[F

    .line 27
    iget-object v0, p1, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->text:Ljava/lang/String;

    .line 28
    iget-byte v0, p1, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->isEnhanced:B

    iput-byte v0, p0, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->isEnhanced:B

    .line 29
    invoke-direct {p0}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getStyleCount()B

    move-result v0

    iput-byte v0, p0, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->stylesCount:B

    .line 30
    return-void
.end method

.method public static createFromParcel(Landroid/os/Parcel;)Lcom/vkontakte/android/imagepicker/entries/StyleEntry;
    .locals 6
    .param p0, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x1

    .line 264
    new-instance v2, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;

    invoke-direct {v2}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;-><init>()V

    .line 266
    .local v2, "result":Lcom/vkontakte/android/imagepicker/entries/StyleEntry;
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v3

    iput-byte v3, v2, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->stylesCount:B

    .line 269
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v3

    iput-byte v3, v2, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->isEnhanced:B

    .line 272
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-ne v3, v5, :cond_0

    .line 273
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->filter_id:I

    .line 276
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-ne v3, v5, :cond_1

    .line 278
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 279
    .local v1, "length":I
    new-array v3, v1, [F

    iput-object v3, v2, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->cropData:[F

    .line 281
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_3

    .line 286
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_1
    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v3

    if-ne v3, v5, :cond_2

    .line 288
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->text:Ljava/lang/String;

    .line 291
    :cond_2
    return-object v2

    .line 282
    .restart local v0    # "i":I
    .restart local v1    # "length":I
    :cond_3
    iget-object v3, v2, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->cropData:[F

    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    aput v4, v3, v0

    .line 281
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
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getIsEnhanced()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    const/4 v1, 0x1

    int-to-byte v0, v1

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getIsCropped()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    add-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    .line 57
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getIsFiltered()Z

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
    iget-byte v1, p0, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->stylesCount:B

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->stylesCount:B

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
    iget-byte v0, p0, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->stylesCount:B

    return v0
.end method

.method public getCropData()[F
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->cropData:[F

    return-object v0
.end method

.method public getFilterId()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->filter_id:I

    return v0
.end method

.method public getIsCropped()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->cropData:[F

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
    iget-byte v1, p0, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->isEnhanced:B

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
    .line 90
    iget v0, p0, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->filter_id:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIsStyled()Z
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getIsFiltered()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getIsCropped()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getIsTexted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getIsEnhanced()Z

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
    .line 147
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->text:Ljava/lang/String;

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
    .line 214
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getTextureStylesCount()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 39
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getIsCropped()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getIsEnhanced()Z

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

    .line 121
    iget-object v2, p0, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->cropData:[F

    if-nez v2, :cond_0

    move-object v0, v1

    .line 129
    :goto_0
    return-object v0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->cropData:[F

    .line 126
    .local v0, "data":[F
    iput-object v1, p0, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->cropData:[F

    .line 127
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getIsCropped()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->updateStylesCount(Z)V

    goto :goto_0
.end method

.method public setCropped([F)V
    .locals 1
    .param p1, "data"    # [F

    .prologue
    .line 136
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->cropData:[F

    if-ne v0, p1, :cond_0

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->cropData:[F

    .line 140
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getIsCropped()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->updateStylesCount(Z)V

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
    iget-byte v1, p0, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->isEnhanced:B

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
    iput-byte v0, p0, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->isEnhanced:B

    .line 83
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getIsEnhanced()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->updateStylesCount(Z)V

    goto :goto_1
.end method

.method public setFiltered(I)V
    .locals 1
    .param p1, "filter_id"    # I

    .prologue
    .line 100
    iget v0, p0, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->filter_id:I

    if-ne v0, p1, :cond_0

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    iput p1, p0, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->filter_id:I

    .line 104
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getIsFiltered()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->updateStylesCount(Z)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->text:Ljava/lang/String;

    if-ne v0, p1, :cond_0

    .line 225
    :goto_0
    return-void

    .line 222
    :cond_0
    iput-object p1, p0, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->text:Ljava/lang/String;

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->lines:Ljava/util/List;

    .line 224
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->last_words_width:I

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

    .line 155
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getIsTexted()Z

    move-result v6

    if-nez v6, :cond_0

    .line 156
    const/4 v6, 0x0

    .line 209
    :goto_0
    return-object v6

    .line 158
    :cond_0
    iget-object v6, p0, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->lines:Ljava/util/List;

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->last_words_width:I

    if-ne v6, p1, :cond_1

    .line 159
    iget-object v6, p0, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->lines:Ljava/util/List;

    goto :goto_0

    .line 161
    :cond_1
    iput p1, p0, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->last_words_width:I

    .line 162
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->lines:Ljava/util/List;

    .line 164
    if-lez p1, :cond_2

    iget-object v6, p0, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->text:Ljava/lang/String;

    invoke-virtual {p2, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    int-to-float v9, p1

    cmpg-float v6, v6, v9

    if-gtz v6, :cond_3

    .line 166
    :cond_2
    iget-object v6, p0, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->lines:Ljava/util/List;

    iget-object v7, p0, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->text:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v6, p0, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->lines:Ljava/util/List;

    goto :goto_0

    .line 171
    :cond_3
    iget-object v5, p0, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->text:Ljava/lang/String;

    .line 172
    .local v5, "text":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 173
    .local v4, "remaining":Ljava/lang/String;
    const/4 v3, 0x0

    .line 174
    .local v3, "pos":I
    const/4 v1, 0x0

    .line 176
    .local v1, "i":I
    const/4 v0, 0x1

    .local v0, "hasNext":Z
    move v2, v1

    .line 180
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    const/16 v6, 0x1388

    if-lt v2, v6, :cond_5

    .line 209
    :cond_4
    iget-object v6, p0, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->lines:Ljava/util/List;

    goto :goto_0

    .line 183
    :cond_5
    if-eqz v0, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 186
    invoke-virtual {p2, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    int-to-float v9, p1

    cmpg-float v6, v6, v9

    if-gtz v6, :cond_8

    .line 188
    iget-object v6, p0, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->lines:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v3, v6

    .line 191
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_7

    move v0, v7

    .line 193
    :goto_2
    if-eqz v0, :cond_6

    .line 194
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 207
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

    .line 191
    goto :goto_2

    .line 199
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

    .line 201
    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 203
    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 204
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 199
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

    .line 231
    iget-byte v1, p0, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->stylesCount:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 234
    iget-byte v1, p0, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->isEnhanced:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 237
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getIsFiltered()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 239
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getIsFiltered()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getFilterId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    :cond_0
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getIsCropped()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 245
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getIsCropped()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 247
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->cropData:[F

    array-length v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    iget-object v4, p0, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->cropData:[F

    array-length v5, v4

    move v1, v3

    :goto_2
    if-lt v1, v5, :cond_5

    .line 254
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getIsTexted()Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 256
    invoke-virtual {p0}, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->getIsTexted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 258
    iget-object v1, p0, Lcom/vkontakte/android/imagepicker/entries/StyleEntry;->text:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 260
    :cond_2
    return-void

    :cond_3
    move v1, v3

    .line 237
    goto :goto_0

    :cond_4
    move v1, v3

    .line 243
    goto :goto_1

    .line 249
    :cond_5
    aget v0, v4, v1

    .line 250
    .local v0, "i":F
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 249
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0    # "i":F
    :cond_6
    move v2, v3

    .line 254
    goto :goto_3
.end method
