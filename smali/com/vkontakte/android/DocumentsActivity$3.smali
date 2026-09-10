.class Lcom/vkontakte/android/DocumentsActivity$3;
.super Ljava/lang/Object;
.source "DocumentsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/DocumentsActivity;->updateList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/DocumentsActivity;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/DocumentsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/DocumentsActivity$3;->this$0:Lcom/vkontakte/android/DocumentsActivity;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/vkontakte/android/DocumentsActivity$3;->this$0:Lcom/vkontakte/android/DocumentsActivity;

    invoke-static {v0}, Lcom/vkontakte/android/DocumentsActivity;->access$6(Lcom/vkontakte/android/DocumentsActivity;)Lcom/vkontakte/android/DocumentsActivity$DocsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkontakte/android/DocumentsActivity$DocsAdapter;->notifyDataSetChanged()V

    .line 151
    return-void
.end method
