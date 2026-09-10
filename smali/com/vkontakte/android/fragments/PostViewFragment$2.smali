.class Lcom/vkontakte/android/fragments/PostViewFragment$2;
.super Landroid/widget/LinearLayout;
.source "PostViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/PostViewFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/PostViewFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/PostViewFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/PostViewFragment$2;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    .line 236
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onSizeChanged(IIII)V
    .locals 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 238
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 239
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 240
    .local v1, "rect":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment$2;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 241
    iget v2, v1, Landroid/graphics/Rect;->top:I

    .line 243
    .local v2, "sbH":I
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment$2;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/fragments/PostViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int v3, v4, v2

    .line 244
    .local v3, "scrH":I
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment$2;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-virtual {v4}, Lcom/vkontakte/android/fragments/PostViewFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/actionbarsherlock/app/ActionBar;->getHeight()I

    move-result v4

    add-int/2addr p2, v4

    .line 245
    sub-int v0, v3, p2

    .line 247
    .local v0, "diff":I
    iget-object v4, p0, Lcom/vkontakte/android/fragments/PostViewFragment$2;->this$0:Lcom/vkontakte/android/fragments/PostViewFragment;

    invoke-static {v4}, Lcom/vkontakte/android/fragments/PostViewFragment;->access$10(Lcom/vkontakte/android/fragments/PostViewFragment;)Lcom/vkontakte/android/EmojiPopup;

    move-result-object v5

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-static {v4}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v4

    if-le v0, v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v5, v4, v0}, Lcom/vkontakte/android/EmojiPopup;->onKeyboardStateChanged(ZI)V

    .line 248
    return-void

    .line 247
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
