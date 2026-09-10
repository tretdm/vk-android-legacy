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
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$9;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    .line 530
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
    .line 533
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v5

    if-nez v5, :cond_2

    .line 535
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 536
    .local v1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    invoke-virtual {p2}, Lcom/google/android/gms/plus/model/people/PersonBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 546
    invoke-virtual {p2}, Lcom/google/android/gms/plus/model/people/PersonBuffer;->close()V

    .line 547
    iget-object v5, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$9;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    iget-object v6, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$9;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-static {v6}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->access$8(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)Lcom/google/android/gms/plus/PlusClient;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/plus/PlusClient;->getCurrentPerson()Lcom/google/android/gms/plus/model/people/Person;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/plus/model/people/Person;->getId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "google"

    invoke-static {v5, v1, v6, v7}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->access$6(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    invoke-virtual {p2}, Lcom/google/android/gms/plus/model/people/PersonBuffer;->close()V

    .line 567
    .end local v1    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_0
    :goto_1
    return-void

    .line 536
    .restart local v1    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    :cond_1
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/plus/model/people/Person;

    .line 538
    .local v2, "p":Lcom/google/android/gms/plus/model/people/Person;
    new-instance v3, Lcom/vkontakte/android/UserProfile;

    invoke-direct {v3}, Lcom/vkontakte/android/UserProfile;-><init>()V

    .line 539
    .local v3, "user":Lcom/vkontakte/android/UserProfile;
    invoke-interface {v2}, Lcom/google/android/gms/plus/model/people/Person;->getId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/vkontakte/android/UserProfile;->extra:Ljava/lang/Object;

    .line 540
    invoke-interface {v2}, Lcom/google/android/gms/plus/model/people/Person;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/vkontakte/android/UserProfile;->fullName:Ljava/lang/String;

    .line 541
    invoke-interface {v2}, Lcom/google/android/gms/plus/model/people/Person;->getImage()Lcom/google/android/gms/plus/model/people/Person$Image;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/plus/model/people/Person$Image;->getUrl()Ljava/lang/String;

    move-result-object v6

    const-string v7, "sz=50"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "sz="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x42700000    # 60.0f

    invoke-static {v9}, Lcom/vkontakte/android/Global;->scale(F)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/vkontakte/android/UserProfile;->photo:Ljava/lang/String;

    .line 544
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 548
    .end local v1    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkontakte/android/UserProfile;>;"
    .end local v2    # "p":Lcom/google/android/gms/plus/model/people/Person;
    .end local v3    # "user":Lcom/vkontakte/android/UserProfile;
    :catch_0
    move-exception v4

    .line 549
    .local v4, "x":Ljava/lang/Throwable;
    :try_start_2
    iget-object v5, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$9;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->access$3(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 551
    invoke-virtual {p2}, Lcom/google/android/gms/plus/model/people/PersonBuffer;->close()V

    goto :goto_1

    .line 550
    .end local v4    # "x":Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    .line 551
    invoke-virtual {p2}, Lcom/google/android/gms/plus/model/people/PersonBuffer;->close()V

    .line 552
    throw v5

    .line 554
    :cond_2
    const-string v5, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Error listing people: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vkontakte/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iget-object v5, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$9;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v5}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f080068

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 556
    iget-object v5, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$9;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->access$3(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 557
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 561
    :try_start_3
    iget-object v5, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$9;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v5}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const/16 v6, 0x66

    invoke-virtual {p1, v5, v6}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_3
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 562
    :catch_1
    move-exception v0

    .line 563
    .local v0, "e":Landroid/content/IntentSender$SendIntentException;
    iget-object v5, p0, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment$9;->this$0:Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;

    invoke-static {v5}, Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;->access$8(Lcom/vkontakte/android/fragments/SuggestionsFriendsFragment;)Lcom/google/android/gms/plus/PlusClient;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/plus/PlusClient;->connect()V

    goto/16 :goto_1
.end method
