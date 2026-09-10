.class Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$3;
.super Ljava/lang/Object;
.source "MessagesSearchSuggestionsPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;-><init>(Lcom/actionbarsherlock/widget/SearchView;Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$3;->this$0:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 107
    new-instance v0, Lcom/vkontakte/android/SearchIndexer;

    invoke-direct {v0}, Lcom/vkontakte/android/SearchIndexer;-><init>()V

    .line 108
    .local v0, "si":Lcom/vkontakte/android/SearchIndexer;, "Lcom/vkontakte/android/SearchIndexer<Lcom/vkontakte/android/UserProfile;>;"
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$3;->this$0:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    invoke-static {v1}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->access$6(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkontakte/android/SearchIndexer;->bind(Ljava/util/List;)V

    .line 109
    invoke-virtual {v0}, Lcom/vkontakte/android/SearchIndexer;->build()V

    .line 110
    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$3;->this$0:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    invoke-static {v1, v0}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->access$7(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;Lcom/vkontakte/android/SearchIndexer;)V

    .line 111
    return-void
.end method
