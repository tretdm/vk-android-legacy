.class Lcom/vkontakte/android/fragments/DialogsFragment$5;
.super Ljava/lang/Object;
.source "DialogsFragment.java"

# interfaces
.implements Lcom/actionbarsherlock/widget/SearchView$OnCloseListener;


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
.method constructor <init>(Lcom/vkontakte/android/fragments/DialogsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$5;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()Z
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$5;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$6(Lcom/vkontakte/android/fragments/DialogsFragment;Ljava/lang/String;)V

    .line 294
    const/4 v0, 0x0

    return v0
.end method
