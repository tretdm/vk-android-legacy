.class Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$9;
.super Ljava/lang/Object;
.source "SuggestionsFriendsFragment.java"

# interfaces
.implements Lcom/google/android/gms/plus/PlusClient$OnPeopleLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->importGoogle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)V
    .locals 0

    .prologue
    .line 528
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$9;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPeopleLoaded(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/plus/model/people/PersonBuffer;Ljava/lang/String;)V
    .locals 10
    .param p1, "status"    # Lcom/google/android/gms/common/ConnectionResult;
    .param p2, "personBuffer"    # Lcom/google/android/gms/plus/model/people/PersonBuffer;
    .param p3, "nextPage"    # Ljava/lang/String;

    .prologue
    .line 531
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v6

    if-nez v6, :cond_2

    .line 533
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 534
    .local v2, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    invoke-virtual {p2}, Lcom/google/android/gms/plus/model/people/PersonBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/plus/model/people/Person;

    .line 536
    .local v3, "p":Lcom/google/android/gms/plus/model/people/Person;
    new-instance v4, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v4}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 537
    .local v4, "user":Lcom/vkontakte/android/UserProfile;
    invoke-interface {v3}, Lcom/google/android/gms/plus/model/people/Person;->getId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/vkontakte/android/UserProfile;->extra:Ljava/lang/Object;

    .line 538
    invoke-interface {v3}, Lcom/google/android/gms/plus/model/people/Person;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 539
    invoke-interface {v3}, Lcom/google/android/gms/plus/model/people/Person;->getImage()Lcom/google/android/gms/plus/model/people/Person$Image;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/plus/model/people/Person$Image;->getUrl()Ljava/lang/String;

    move-result-object v6

    const-string v7, "sz=50"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sz="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/high16 v9, 0x42700000    # 60.0f

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 542
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 546
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .end local v3    # "p":Lcom/google/android/gms/plus/model/people/Person;
    .end local v4    # "user":Lcom/vkontakte/android/UserProfile;
    :catch_0
    move-exception v5

    .line 547
    .local v5, "x":Ljava/lang/Throwable;
    :try_start_1
    iget-object v6, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$9;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->access$300(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 549
    invoke-virtual {p2}, Lcom/google/android/gms/plus/model/people/PersonBuffer;->close()V

    .line 565
    .end local v5    # "x":Ljava/lang/Throwable;
    :cond_0
    :goto_1
    return-void

    .line 544
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_1
    :try_start_2
    invoke-virtual {p2}, Lcom/google/android/gms/plus/model/people/PersonBuffer;->close()V

    .line 545
    iget-object v6, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$9;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    iget-object v7, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$9;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-static {v7}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->access$1200(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)Lcom/google/android/gms/plus/PlusClient;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/plus/PlusClient;->getCurrentPerson()Lcom/google/android/gms/plus/model/people/Person;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/gms/plus/model/people/Person;->getId()Ljava/lang/String;

    move-result-object v7

    const-string v8, "google"

    invoke-static {v6, v2, v7, v8}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->access$1000(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 549
    invoke-virtual {p2}, Lcom/google/android/gms/plus/model/people/PersonBuffer;->close()V

    goto :goto_1

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :catchall_0
    move-exception v6

    invoke-virtual {p2}, Lcom/google/android/gms/plus/model/people/PersonBuffer;->close()V

    throw v6

    .line 552
    :cond_2
    const-string v6, "vk"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error listing people: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iget-object v6, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$9;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v6}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0d00d0

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 554
    iget-object v6, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$9;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->access$300(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 555
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 559
    :try_start_3
    iget-object v6, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$9;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v6}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/16 v7, 0x66

    invoke-virtual {p1, v6, v7}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_3
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 560
    :catch_1
    move-exception v0

    .line 561
    .local v0, "e":Landroid/content/IntentSender$SendIntentException;
    iget-object v6, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$9;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->access$1200(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)Lcom/google/android/gms/plus/PlusClient;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/plus/PlusClient;->connect()V

    goto :goto_1
.end method
