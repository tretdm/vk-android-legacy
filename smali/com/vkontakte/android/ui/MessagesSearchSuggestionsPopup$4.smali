.class Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$4;
.super Ljava/lang/Object;
.source "MessagesSearchSuggestionsPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->updateQuery(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

.field private final synthetic val$q:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$4;->this$0:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    iput-object p2, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$4;->val$q:Ljava/lang/String;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$4;->this$0:Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;

    iget-object v1, p0, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup$4;->val$q:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;->access$8(Lcom/vkontakte/android/ui/MessagesSearchSuggestionsPopup;Ljava/lang/String;)V

    .line 141
    return-void
.end method
