.class Lcom/vkontakte/android/fragments/DialogsFragment$15;
.super Ljava/lang/Object;
.source "DialogsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/DialogsFragment;->confirmAndClearHistory(Lcom/vkontakte/android/DialogEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

.field private final synthetic val$e:Lcom/vkontakte/android/DialogEntry;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/DialogsFragment;Lcom/vkontakte/android/DialogEntry;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$15;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/DialogsFragment$15;->val$e:Lcom/vkontakte/android/DialogEntry;

    .line 974
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 977
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DialogsFragment$15;->this$0:Lcom/vkontakte/android/fragments/DialogsFragment;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/DialogsFragment$15;->val$e:Lcom/vkontakte/android/DialogEntry;

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/DialogsFragment;->access$24(Lcom/vkontakte/android/fragments/DialogsFragment;Lcom/vkontakte/android/DialogEntry;)V

    .line 978
    return-void
.end method
