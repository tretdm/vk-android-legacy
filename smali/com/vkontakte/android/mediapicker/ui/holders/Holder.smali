.class public abstract Lcom/vkontakte/android/mediapicker/ui/holders/Holder;
.super Ljava/lang/Object;
.source "Holder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private isSelected:Z

.field private position:I

.field private type:I

.field protected viewWrap:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    .local p0, "this":Lcom/vkontakte/android/mediapicker/ui/holders/Holder;, "Lcom/vkontakte/android/mediapicker/ui/holders/Holder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract clear()V
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 32
    .local p0, "this":Lcom/vkontakte/android/mediapicker/ui/holders/Holder;, "Lcom/vkontakte/android/mediapicker/ui/holders/Holder<TT;>;"
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/holders/Holder;->position:I

    return v0
.end method

.method protected getType()I
    .locals 1

    .prologue
    .line 52
    .local p0, "this":Lcom/vkontakte/android/mediapicker/ui/holders/Holder;, "Lcom/vkontakte/android/mediapicker/ui/holders/Holder<TT;>;"
    iget v0, p0, Lcom/vkontakte/android/mediapicker/ui/holders/Holder;->type:I

    return v0
.end method

.method public getView(Landroid/content/Context;Landroid/view/View;ILjava/lang/Object;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "ITT;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lcom/vkontakte/android/mediapicker/ui/holders/Holder;, "Lcom/vkontakte/android/mediapicker/ui/holders/Holder<TT;>;"
    .local p4, "data":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    .line 106
    .local v0, "inited":Z
    invoke-virtual {p0, p4}, Lcom/vkontakte/android/mediapicker/ui/holders/Holder;->getViewType(Ljava/lang/Object;)I

    move-result v1

    .line 108
    .local v1, "type":I
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/holders/Holder;->getType()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 110
    :cond_0
    const/4 v0, 0x0

    .line 112
    invoke-virtual {p0}, Lcom/vkontakte/android/mediapicker/ui/holders/Holder;->clear()V

    .line 114
    invoke-virtual {p0, p1, v1, p4}, Lcom/vkontakte/android/mediapicker/ui/holders/Holder;->initialize(Landroid/content/Context;ILjava/lang/Object;)Landroid/view/View;

    move-result-object p2

    .line 117
    :cond_1
    if-nez v0, :cond_2

    .line 119
    invoke-virtual {p0, v1}, Lcom/vkontakte/android/mediapicker/ui/holders/Holder;->setType(I)V

    .line 121
    iput-object p2, p0, Lcom/vkontakte/android/mediapicker/ui/holders/Holder;->viewWrap:Landroid/view/View;

    .line 122
    invoke-virtual {p0, p2, v1}, Lcom/vkontakte/android/mediapicker/ui/holders/Holder;->getViews(Landroid/view/View;I)V

    .line 124
    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 127
    :cond_2
    invoke-virtual {p0, p3}, Lcom/vkontakte/android/mediapicker/ui/holders/Holder;->setPosition(I)V

    .line 128
    invoke-virtual {p0, p1, v1, p4}, Lcom/vkontakte/android/mediapicker/ui/holders/Holder;->update(Landroid/content/Context;ILjava/lang/Object;)V

    .line 130
    return-object p2
.end method

.method protected abstract getViewType(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method protected abstract getViews(Landroid/view/View;I)V
.end method

.method protected abstract initialize(Landroid/content/Context;ILjava/lang/Object;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ITT;)",
            "Landroid/view/View;"
        }
    .end annotation
.end method

.method protected isSelected()Z
    .locals 1

    .prologue
    .line 62
    .local p0, "this":Lcom/vkontakte/android/mediapicker/ui/holders/Holder;, "Lcom/vkontakte/android/mediapicker/ui/holders/Holder<TT;>;"
    iget-boolean v0, p0, Lcom/vkontakte/android/mediapicker/ui/holders/Holder;->isSelected:Z

    return v0
.end method

.method protected setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 23
    .local p0, "this":Lcom/vkontakte/android/mediapicker/ui/holders/Holder;, "Lcom/vkontakte/android/mediapicker/ui/holders/Holder<TT;>;"
    iput p1, p0, Lcom/vkontakte/android/mediapicker/ui/holders/Holder;->position:I

    .line 24
    return-void
.end method

.method protected setSelected(Z)V
    .locals 0
    .param p1, "isSelected"    # Z

    .prologue
    .line 57
    .local p0, "this":Lcom/vkontakte/android/mediapicker/ui/holders/Holder;, "Lcom/vkontakte/android/mediapicker/ui/holders/Holder<TT;>;"
    iput-boolean p1, p0, Lcom/vkontakte/android/mediapicker/ui/holders/Holder;->isSelected:Z

    .line 58
    return-void
.end method

.method protected setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 42
    .local p0, "this":Lcom/vkontakte/android/mediapicker/ui/holders/Holder;, "Lcom/vkontakte/android/mediapicker/ui/holders/Holder<TT;>;"
    iput p1, p0, Lcom/vkontakte/android/mediapicker/ui/holders/Holder;->type:I

    .line 43
    return-void
.end method

.method protected abstract update(Landroid/content/Context;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ITT;)V"
        }
    .end annotation
.end method
