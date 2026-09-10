.class Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$DropDownListView;
.super Landroid/widget/ListView;
.source "MessagesSearchSuggestionsPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropDownListView"
.end annotation


# instance fields
.field private mListSelectionHidden:Z

.field final synthetic this$0:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;


# direct methods
.method public constructor <init>(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$DropDownListView;->this$0:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    .line 319
    invoke-direct {p0, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 320
    return-void
.end method


# virtual methods
.method public hasFocus()Z
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x1

    return v0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x1

    return v0
.end method

.method public isFocused()Z
    .locals 1

    .prologue
    .line 345
    const/4 v0, 0x1

    return v0
.end method

.method public isInTouchMode()Z
    .locals 1

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$DropDownListView;->mListSelectionHidden:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
