.class Lcom/vkontakte/android/fragments/DialogsFragment$3;
.super Lcom/actionbarsherlock/widget/SearchView;
.source "DialogsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/DialogsFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/DialogsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/DialogsFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$3;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    .line 255
    invoke-direct {p0, p2}, Lcom/actionbarsherlock/widget/SearchView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$3;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$5(Lcom/vkontakte/android/fragments/DialogsFragment;)Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
