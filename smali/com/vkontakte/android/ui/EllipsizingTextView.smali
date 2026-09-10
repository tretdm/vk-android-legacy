.class public Lcom/vkontakte/android/ui/EllipsizingTextView;
.super Landroid/widget/TextView;
.source "EllipsizingTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkontakte/android/ui/EllipsizingTextView$EllipsizeListener;
    }
.end annotation


# static fields
.field private static final ELLIPSIS:Ljava/lang/String; = "..."


# instance fields
.field private final ellipsizeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkontakte/android/ui/EllipsizingTextView$EllipsizeListener;",
            ">;"
        }
    .end annotation
.end field

.field private fullText:Ljava/lang/String;

.field private isEllipsized:Z

.field private isStale:Z

.field private lineAdditionalVerticalPadding:F

.field private lineSpacingMultiplier:F

.field private maxLines:I

.field private programmaticChange:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/EllipsizingTextView;->ellipsizeListeners:Ljava/util/List;

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/ui/EllipsizingTextView;->maxLines:I

    .line 27
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/vkontakte/android/ui/EllipsizingTextView;->lineSpacingMultiplier:F

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/ui/EllipsizingTextView;->lineAdditionalVerticalPadding:F

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/EllipsizingTextView;->ellipsizeListeners:Ljava/util/List;

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/ui/EllipsizingTextView;->maxLines:I

    .line 27
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/vkontakte/android/ui/EllipsizingTextView;->lineSpacingMultiplier:F

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/ui/EllipsizingTextView;->lineAdditionalVerticalPadding:F

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkontakte/android/ui/EllipsizingTextView;->ellipsizeListeners:Ljava/util/List;

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkontakte/android/ui/EllipsizingTextView;->maxLines:I

    .line 27
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/vkontakte/android/ui/EllipsizingTextView;->lineSpacingMultiplier:F

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkontakte/android/ui/EllipsizingTextView;->lineAdditionalVerticalPadding:F

    .line 40
    return-void
.end method

.method private createWorkingLayout(Ljava/lang/String;)Landroid/text/Layout;
    .locals 8
    .param p1, "workingText"    # Ljava/lang/String;

    .prologue
    .line 130
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/EllipsizingTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/EllipsizingTextView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/EllipsizingTextView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/vkontakte/android/ui/EllipsizingTextView;->getPaddingRight()I

    move-result v3

    sub-int v3, v1, v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iget v5, p0, Lcom/vkontakte/android/ui/EllipsizingTextView;->lineSpacingMultiplier:F

    iget v6, p0, Lcom/vkontakte/android/ui/EllipsizingTextView;->lineAdditionalVerticalPadding:F

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0
.end method

.method private resetText()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 94
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/EllipsizingTextView;->getMaxLines()I

    move-result v5

    .line 95
    .local v5, "maxLines":I
    iget-object v6, p0, Lcom/vkontakte/android/ui/EllipsizingTextView;->fullText:Ljava/lang/String;

    .line 96
    .local v6, "workingText":Ljava/lang/String;
    const/4 v0, 0x0

    .line 97
    .local v0, "ellipsized":Z
    if-eq v5, v10, :cond_1

    .line 98
    invoke-direct {p0, v6}, Lcom/vkontakte/android/ui/EllipsizingTextView;->createWorkingLayout(Ljava/lang/String;)Landroid/text/Layout;

    move-result-object v3

    .line 99
    .local v3, "layout":Landroid/text/Layout;
    invoke-virtual {v3}, Landroid/text/Layout;->getLineCount()I

    move-result v7

    if-le v7, v5, :cond_1

    .line 100
    iget-object v7, p0, Lcom/vkontakte/android/ui/EllipsizingTextView;->fullText:Ljava/lang/String;

    add-int/lit8 v8, v5, -0x1

    invoke-virtual {v3, v8}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v8

    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 101
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/vkontakte/android/ui/EllipsizingTextView;->createWorkingLayout(Ljava/lang/String;)Landroid/text/Layout;

    move-result-object v7

    invoke-virtual {v7}, Landroid/text/Layout;->getLineCount()I

    move-result v7

    if-le v7, v5, :cond_0

    .line 102
    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 103
    .local v2, "lastSpace":I
    if-ne v2, v10, :cond_3

    .line 108
    .end local v2    # "lastSpace":I
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 109
    const/4 v0, 0x1

    .line 112
    .end local v3    # "layout":Landroid/text/Layout;
    :cond_1
    invoke-virtual {p0}, Lcom/vkontakte/android/ui/EllipsizingTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 113
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/vkontakte/android/ui/EllipsizingTextView;->programmaticChange:Z

    .line 115
    :try_start_0
    invoke-virtual {p0, v6}, Lcom/vkontakte/android/ui/EllipsizingTextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    iput-boolean v9, p0, Lcom/vkontakte/android/ui/EllipsizingTextView;->programmaticChange:Z

    .line 120
    :cond_2
    iput-boolean v9, p0, Lcom/vkontakte/android/ui/EllipsizingTextView;->isStale:Z

    .line 121
    iget-boolean v7, p0, Lcom/vkontakte/android/ui/EllipsizingTextView;->isEllipsized:Z

    if-eq v0, v7, :cond_4

    .line 122
    iput-boolean v0, p0, Lcom/vkontakte/android/ui/EllipsizingTextView;->isEllipsized:Z

    .line 123
    iget-object v7, p0, Lcom/vkontakte/android/ui/EllipsizingTextView;->ellipsizeListeners:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkontakte/android/ui/EllipsizingTextView$EllipsizeListener;

    .line 124
    .local v4, "listener":Lcom/vkontakte/android/ui/EllipsizingTextView$EllipsizeListener;
    invoke-interface {v4, v0}, Lcom/vkontakte/android/ui/EllipsizingTextView$EllipsizeListener;->ellipsizeStateChanged(Z)V

    goto :goto_1

    .line 106
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "listener":Lcom/vkontakte/android/ui/EllipsizingTextView$EllipsizeListener;
    .restart local v2    # "lastSpace":I
    .restart local v3    # "layout":Landroid/text/Layout;
    :cond_3
    invoke-virtual {v6, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 107
    goto :goto_0

    .line 117
    .end local v2    # "lastSpace":I
    .end local v3    # "layout":Landroid/text/Layout;
    :catchall_0
    move-exception v7

    iput-boolean v9, p0, Lcom/vkontakte/android/ui/EllipsizingTextView;->programmaticChange:Z

    throw v7

    .line 127
    :cond_4
    return-void
.end method


# virtual methods
.method public addEllipsizeListener(Lcom/vkontakte/android/ui/EllipsizingTextView$EllipsizeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/vkontakte/android/ui/EllipsizingTextView$EllipsizeListener;

    .prologue
    .line 43
    if-nez p1, :cond_0

    .line 44
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/ui/EllipsizingTextView;->ellipsizeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    return-void
.end method

.method public getMaxLines()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/vkontakte/android/ui/EllipsizingTextView;->maxLines:I

    return v0
.end method

.method public isEllipsized()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/EllipsizingTextView;->isEllipsized:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/EllipsizingTextView;->isStale:Z

    if-eqz v0, :cond_0

    .line 87
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 88
    invoke-direct {p0}, Lcom/vkontakte/android/ui/EllipsizingTextView;->resetText()V

    .line 90
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 91
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 78
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/EllipsizingTextView;->programmaticChange:Z

    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkontakte/android/ui/EllipsizingTextView;->fullText:Ljava/lang/String;

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/EllipsizingTextView;->isStale:Z

    .line 82
    :cond_0
    return-void
.end method

.method public removeEllipsizeListener(Lcom/vkontakte/android/ui/EllipsizingTextView$EllipsizeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/vkontakte/android/ui/EllipsizingTextView$EllipsizeListener;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vkontakte/android/ui/EllipsizingTextView;->ellipsizeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 0
    .param p1, "where"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    .line 137
    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 0
    .param p1, "add"    # F
    .param p2, "mult"    # F

    .prologue
    .line 70
    iput p1, p0, Lcom/vkontakte/android/ui/EllipsizingTextView;->lineAdditionalVerticalPadding:F

    .line 71
    iput p2, p0, Lcom/vkontakte/android/ui/EllipsizingTextView;->lineSpacingMultiplier:F

    .line 72
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 73
    return-void
.end method

.method public setMaxLines(I)V
    .locals 1
    .param p1, "maxLines"    # I

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 60
    iput p1, p0, Lcom/vkontakte/android/ui/EllipsizingTextView;->maxLines:I

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkontakte/android/ui/EllipsizingTextView;->isStale:Z

    .line 62
    return-void
.end method
