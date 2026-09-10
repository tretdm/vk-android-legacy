.class Lcom/vkontakte/android/fragments/BoardTopicsFragment$4;
.super Ljava/lang/Object;
.source "BoardTopicsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/BoardTopicsFragment;->updateList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/BoardTopicsFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    invoke-static {v0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->access$6(Lcom/vkontakte/android/fragments/BoardTopicsFragment;)Lcom/vkontakte/android/fragments/BoardTopicsFragment$TopicListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/fragments/BoardTopicsFragment$TopicListAdapter;->notifyDataSetChanged()V

    .line 241
    iget-object v0, p0, Lcom/vkontakte/android/fragments/BoardTopicsFragment$4;->this$0:Lcom/vkontakte/android/fragments/BoardTopicsFragment;

    iget-object v0, v0, Lcom/vkontakte/android/fragments/BoardTopicsFragment;->imgLoader:Lcom/vkontakte/android/ui/ListImageLoaderWrapper;

    invoke-virtual {v0}, Lcom/vkontakte/android/ui/ListImageLoaderWrapper;->updateImages()V

    .line 242
    return-void
.end method
