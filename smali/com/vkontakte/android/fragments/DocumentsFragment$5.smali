.class Lcom/vkontakte/android/fragments/DocumentsFragment$5;
.super Ljava/lang/Object;
.source "DocumentsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/DocumentsFragment;->confirmAndDelete(Lcom/vkontakte/android/api/Document;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

.field private final synthetic val$doc:Lcom/vkontakte/android/api/Document;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/DocumentsFragment;Lcom/vkontakte/android/api/Document;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$5;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    iput-object p2, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$5;->val$doc:Lcom/vkontakte/android/api/Document;

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 295
    iget-object v0, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$5;->this$0:Lcom/vkontakte/android/fragments/DocumentsFragment;

    iget-object v1, p0, Lcom/vkontakte/android/fragments/DocumentsFragment$5;->val$doc:Lcom/vkontakte/android/api/Document;

    invoke-static {v0, v1}, Lcom/vkontakte/android/fragments/DocumentsFragment;->access$9(Lcom/vkontakte/android/fragments/DocumentsFragment;Lcom/vkontakte/android/api/Document;)V

    .line 296
    return-void
.end method
