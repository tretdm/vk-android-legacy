.class Lcom/vkontakte/android/fragments/SignupProfileFragment$4;
.super Ljava/lang/Object;
.source "SignupProfileFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/SignupProfileFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/SignupProfileFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/SignupProfileFragment;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment$4;->this$0:Lcom/vkontakte/android/fragments/SignupProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/vkontakte/android/fragments/SignupProfileFragment$4;->this$0:Lcom/vkontakte/android/fragments/SignupProfileFragment;

    invoke-static {v0, p1}, Lcom/vkontakte/android/fragments/SignupProfileFragment;->access$300(Lcom/vkontakte/android/fragments/SignupProfileFragment;Landroid/view/View;)V

    .line 99
    const/4 v0, 0x0

    return v0
.end method
