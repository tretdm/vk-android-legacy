.class Lcom/vkontakte/android/ChatActivity$23;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/view/Window$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ChatActivity;->showEmojiPicker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ChatActivity;

.field private final synthetic val$dlg:Landroid/app/Dialog;

.field private final synthetic val$pv:Lcom/vkontakte/android/EmojiPickerView;

.field private final synthetic val$wcb:Landroid/view/Window$Callback;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ChatActivity;Landroid/view/Window$Callback;Lcom/vkontakte/android/EmojiPickerView;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ChatActivity$23;->this$0:Lcom/vkontakte/android/ChatActivity;

    iput-object p2, p0, Lcom/vkontakte/android/ChatActivity$23;->val$wcb:Landroid/view/Window$Callback;

    iput-object p3, p0, Lcom/vkontakte/android/ChatActivity$23;->val$pv:Lcom/vkontakte/android/EmojiPickerView;

    iput-object p4, p0, Lcom/vkontakte/android/ChatActivity$23;->val$dlg:Landroid/app/Dialog;

    .line 923
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$23;->val$wcb:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$23;->val$dlg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1047
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$23;->this$0:Lcom/vkontakte/android/ChatActivity;

    invoke-virtual {v0, p1}, Lcom/vkontakte/android/ChatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$23;->val$wcb:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1036
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1013
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_1

    .line 1014
    new-array v2, v12, [I

    .line 1015
    .local v2, "pos":[I
    iget-object v8, p0, Lcom/vkontakte/android/ChatActivity$23;->this$0:Lcom/vkontakte/android/ChatActivity;

    const v9, 0x7f060180

    invoke-virtual {v8, v9}, Lcom/vkontakte/android/ChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1016
    new-array v3, v12, [I

    .line 1017
    .local v3, "ppos":[I
    iget-object v8, p0, Lcom/vkontakte/android/ChatActivity$23;->val$pv:Lcom/vkontakte/android/EmojiPickerView;

    invoke-virtual {v8, v3}, Lcom/vkontakte/android/EmojiPickerView;->getLocationOnScreen([I)V

    .line 1018
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    .local v6, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    .local v7, "y":F
    aget v8, v3, v10

    int-to-float v1, v8

    .local v1, "left":F
    aget v8, v3, v11

    int-to-float v5, v8

    .local v5, "top":F
    aget v8, v3, v11

    iget-object v9, p0, Lcom/vkontakte/android/ChatActivity$23;->val$pv:Lcom/vkontakte/android/EmojiPickerView;

    invoke-virtual {v9}, Lcom/vkontakte/android/EmojiPickerView;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v0, v8

    .local v0, "bottom":F
    aget v8, v3, v10

    iget-object v9, p0, Lcom/vkontakte/android/ChatActivity$23;->val$pv:Lcom/vkontakte/android/EmojiPickerView;

    invoke-virtual {v9}, Lcom/vkontakte/android/EmojiPickerView;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v4, v8

    .line 1019
    .local v4, "right":F
    cmpg-float v8, v6, v1

    if-ltz v8, :cond_0

    cmpl-float v8, v6, v4

    if-gtz v8, :cond_0

    cmpg-float v8, v7, v5

    if-ltz v8, :cond_0

    cmpl-float v8, v7, v0

    if-lez v8, :cond_1

    .line 1021
    :cond_0
    iget-object v8, p0, Lcom/vkontakte/android/ChatActivity$23;->val$dlg:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->dismiss()V

    .line 1030
    .end local v0    # "bottom":F
    .end local v1    # "left":F
    .end local v2    # "pos":[I
    .end local v3    # "ppos":[I
    .end local v4    # "right":F
    .end local v5    # "top":F
    .end local v6    # "x":F
    .end local v7    # "y":F
    :cond_1
    iget-object v8, p0, Lcom/vkontakte/android/ChatActivity$23;->val$wcb:Landroid/view/Window$Callback;

    invoke-interface {v8, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    return v8
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$23;->val$wcb:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$23;->val$wcb:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 1004
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 998
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$23;->val$wcb:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 999
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 993
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$23;->val$wcb:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    .line 994
    return-void
.end method

.method public onContentChanged()V
    .locals 1

    .prologue
    .line 988
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$23;->val$wcb:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 989
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 983
    const/4 v0, 0x0

    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 977
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 971
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$23;->val$wcb:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    .line 972
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 966
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 960
    const/4 v0, 0x0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 955
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 948
    const/4 v0, 0x0

    return v0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 942
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 937
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$23;->val$wcb:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 938
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 931
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$23;->val$wcb:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    .line 932
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 926
    iget-object v0, p0, Lcom/vkontakte/android/ChatActivity$23;->val$wcb:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method
