.class Lcom/vkontakte/android/fragments/AudioPlaylistFragment$3;
.super Landroid/widget/ListView;
.source "AudioPlaylistFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/AudioPlaylistFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$3;->this$0:Lcom/vkontakte/android/fragments/AudioPlaylistFragment;

    invoke-direct {p0, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 7
    .param p1, "wms"    # I
    .param p2, "hms"    # I

    .prologue
    const/16 v5, 0x14

    const/high16 v6, 0x43960000    # 300.0f

    .line 159
    iget-object v4, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$3;->this$0:Lcom/vkontakte/android/fragments/AudioPlaylistFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$3;->this$0:Lcom/vkontakte/android/fragments/AudioPlaylistFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    if-nez v4, :cond_2

    .line 160
    :cond_0
    invoke-virtual {p0, v5, v5}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$3;->setMeasuredDimension(II)V

    .line 161
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$3;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 184
    :cond_1
    :goto_0
    return-void

    .line 164
    :cond_2
    iget-object v4, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$3;->this$0:Lcom/vkontakte/android/fragments/AudioPlaylistFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 165
    .local v3, "wbg":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 166
    .local v1, "pad":I
    if-eqz v3, :cond_3

    .line 167
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 168
    .local v2, "r":Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 169
    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    add-int v1, v4, v5

    .line 171
    .end local v2    # "r":Landroid/graphics/Rect;
    :cond_3
    iget-object v4, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$3;->this$0:Lcom/vkontakte/android/fragments/AudioPlaylistFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->access$500(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 172
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 173
    .restart local v2    # "r":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$3;->this$0:Lcom/vkontakte/android/fragments/AudioPlaylistFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 174
    iget v4, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v4

    .line 176
    .end local v2    # "r":Landroid/graphics/Rect;
    :cond_4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$3;->this$0:Lcom/vkontakte/android/fragments/AudioPlaylistFragment;

    invoke-virtual {v5}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActionBar;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int v0, v4, v1

    .line 177
    .local v0, "h":I
    iget-object v4, p0, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$3;->this$0:Lcom/vkontakte/android/fragments/AudioPlaylistFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment;->access$500(Lcom/vkontakte/android/fragments/AudioPlaylistFragment;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 178
    const/high16 v4, -0x80000000

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-super {p0, p1, v4}, Landroid/widget/ListView;->onMeasure(II)V

    .line 179
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$3;->getMeasuredHeight()I

    move-result v4

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 180
    invoke-virtual {p0}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$3;->getMeasuredWidth()I

    move-result v4

    invoke-static {v6}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/vkontakte/android/fragments/AudioPlaylistFragment$3;->setMeasuredDimension(II)V

    goto :goto_0

    .line 183
    :cond_5
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-super {p0, p1, v4}, Landroid/widget/ListView;->onMeasure(II)V

    goto/16 :goto_0
.end method
